<?php
/**
 * @author: emcif
 * @date: 21-Apr-15
 * @time: 06:13
 */
/*
 * User's fields:
 * ID (primary, autoincrement, int 8)
 * name (varchar 32)
 * password (varchar 32)
 * regdate (datetime)
 * lastlogin (datetime)
 * group (int 8)
 * money (int 16)
 * mail (varchar 64)
 * phone (varchar 16)
 * session (varchar 128)
 *
CREATE TABLE `us`.`users` (
`user_id` INT UNSIGNED NULL AUTO_INCREMENT,
`user_name` VARCHAR(32) NULL,
`user_password` VARCHAR(32) NULL,
`user_regdate` DATETIME NULL,
`user_lastlogin` DATETIME NULL,
`user_group` TINYINT(8) NULL,
`user_money` INT UNSIGNED NULL,
`user_mail` VARCHAR(64) NULL,
`user_phone` VARCHAR(16) NULL,
`user_session` VARCHAR(128) NULL,
PRIMARY KEY (`user_id`),
UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC));
 */

class User
{
    static public $mysql = null;

    /**
     * @param $name
     * @param $password
     * @param string $mail
     * @param string $phone
     * @return bool
     */
    static public function register($name, $password, $mail = "", $phone = "")
    {
        $prep_query = User::$mysql->prepare("SELECT user_id FROM `users` WHERE `user_name`=? LIMIT 1")
        or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
        $prep_query->bind_param("s", $name);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return false;
        } else {
            $prep_query->free_result();
            $prep_query = User::$mysql->prepare("INSERT INTO `users` (user_name, user_password, user_regdate, user_mail, user_phone) VALUES (?, ?, NOW(), ?, ?)")
            or die('MySQL Error. Error[' . $prep_query->errno . ']: ' . $prep_query->error);
            $prep_query->bind_param("ssss", $name, md5($password), $mail, $phone);
            $prep_query->execute();
            $prep_query->store_result();
            $rows = $prep_query->affected_rows;
            $prep_query->free_result();
            return ($rows) ? User::$mysql->insert_id : false;
        }
    }

    /**
     * @param $name
     * @param $password
     * @return bool|string
     */
    static public function login($name, $password)
    {
        $prep_query = User::$mysql->prepare("SELECT user_id FROM `users` WHERE `user_name`=? AND `user_password`=? LIMIT 1")
        or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
        $prep_query->bind_param("ss", $name, md5($password));
        $prep_query->execute();
        $result = $prep_query->get_result();
        $arr = $result->fetch_assoc();
        $rows = $prep_query->affected_rows;
        $prep_query->free_result();
        if ($rows) {
            $now = time();
            $hash = hash("sha512", rand() . $password . $now . $name);
            $prep_query = User::$mysql->prepare("UPDATE `users` SET `user_session`=?, `user_lastlogin`=NOW() WHERE `user_id`=?")
            or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
            $prep_query->bind_param("si", $hash, $arr["user_id"]);
            $prep_query->execute();
            $prep_query->store_result();
            $rows = $prep_query->affected_rows;
            $prep_query->free_result();
            return ($rows) ? array($hash, $arr["user_id"]) : false;
        } else return false;
    }

    /**
     * @param $session
     * @return array|bool
     */
    static public function logout($session)
    {
        $prep_query = User::$mysql->prepare("UPDATE users SET `user_session`=NULL WHERE `user_session`=?")
        or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
        $prep_query->bind_param("s", $session);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return true;
        } else {
            $prep_query->free_result();
            return false;
        }
    }

    /**
     * @param $session
     * @return array|bool
     */
    static public function get_data($session)
    {
        $prep_query = User::$mysql->prepare("SELECT *, NULL AS user_password FROM `users` WHERE `user_session`=? LIMIT 1")
        or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
        $prep_query->bind_param("s", $session);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        if ($rows > 0) {
            $result = $result->fetch_assoc();
            $prep_query->free_result();
            return $result;
        } else {
            $prep_query->free_result();
            return false;
        }
    }

    /**
     * @param $session
     * @return array|bool
     */
    static public function get_privelegies($session)
    {
        $prep_query = User::$mysql->prepare("SELECT groups.* FROM `users`, `groups` WHERE users.`user_session`=? AND users.`user_group`=groups.`group_id` LIMIT 1")
        or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
        $prep_query->bind_param("s", $session);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        if ($rows > 0) {
            $result = $result->fetch_assoc();
            $prep_query->free_result();
            return $result;
        } else {
            $prep_query->free_result();
            return false;
        }
    }

    /**
     * @param $tabs
     * @return array|bool
     */
    static public function get_tabs($tabs)
    {
        $prep_query = User::$mysql->prepare("SELECT * FROM `tabs` WHERE FIND_IN_SET(`tab_id`, ?)")
        or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
        $prep_query->bind_param("s", $tabs);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        $return_array = array();
        for ($i = 0; $i < $rows; $i++) {
            $return_array[$i] = $result->fetch_assoc();
        }
        $prep_query->free_result();
        return ($rows) ? $return_array : false;
    }
}