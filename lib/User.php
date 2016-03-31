<?php
/**
 * @author: emcif
 * @date: 21-Apr-15
 * @time: 06:13
 */
require "MySQL.php";

class User
{
    /**
     * @param $name
     * @param $password
     * @param string $mail
     * @param string $phone
     * @return bool
     */
    static public function register($name, $password, $mail = "", $phone = "")
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("SELECT user_id FROM `users` WHERE `user_name`=? LIMIT 1")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("s", $name);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return false;
        } else {
            $prep_query->free_result();
            $prep_query = $mysql->prepare("INSERT INTO `users` (user_name, user_password, user_regdate, user_mail, user_phone) VALUES (?, ?, NOW(), ?, ?)")
            or die('MySQL Error. Error[' . $prep_query->errno . ']: ' . $prep_query->error);
            $prep_query->bind_param("ssss", $name, md5($password), $mail, $phone);
            $prep_query->execute();
            $prep_query->store_result();
            $rows = $prep_query->affected_rows;
            $prep_query->free_result();
            return ($rows) ? $mysql->insert_id : false;
        }
    }

    /**
     * @param $name
     * @param $password
     * @return bool|string
     */
    static public function login($name, $password)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("SELECT user_id FROM `users` WHERE `user_name`=? AND `user_password`=MD5(?) LIMIT 1")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ss", $name, $password);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $arr = $result->fetch_assoc();
        $rows = $prep_query->affected_rows;
        $prep_query->free_result();
        if ($rows) {
            $now = time();
            $hash = hash("sha512", rand() . $password . $now . $name);
            $prep_query = $mysql->prepare("UPDATE `users` SET `user_session`=?, `user_lastlogin`=NOW() WHERE `user_id`=?")
            or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
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
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("UPDATE users SET `user_session`=NULL WHERE `user_session`=?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
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
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("
            SELECT *, NULL AS user_password FROM `users`
            LEFT JOIN `groups` ON `groups`.`group_id` = `users`.`user_group`
            WHERE `user_session`=? LIMIT 1")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
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

    static public function get_users($from, $count)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("
            SELECT *, NULL AS user_password, NULL AS user_session FROM `users`
            LEFT JOIN `groups` ON `groups`.`group_id` = `users`.`user_group`
            LIMIT ?,?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ii", $from, $count);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        $array = [];
        if ($rows > 0) {
            for($i = 0; $i < $rows; ++$i)
                $array[] = $result->fetch_assoc();
            $prep_query->free_result();
            return $array;
        } else {
            $prep_query->free_result();
            return false;
        }
    }

    static public function set_language($session, $language)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("UPDATE users SET `user_language`=? WHERE `user_session`=?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ss", $language, $session);
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
    static public function get_privelegies($session)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("SELECT groups.* FROM `users`, `groups` WHERE users.`user_session`=? AND users.`user_group`=groups.`group_id` LIMIT 1")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
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
     * @param $user
     * @return array|bool
     */
    static public function get_tabs($user)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("
            SELECT `tabs`.`tab_name` FROM `tabs`
            LEFT JOIN `group_tabs` ON `group_tabs`.`tabs_tab_id` = `tabs`.`tab_id`
            LEFT JOIN `groups` ON `groups`.`group_id` = `group_tabs`.`groups_group_id`
            LEFT JOIN `users` ON `groups`.`group_id` = `users`.`user_group`
            WHERE `users`.`user_id`=?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("i", $user);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        $return_array = array();
        for ($i = 0; $i < $rows; $i++) {
            $return_array[] = $result->fetch_assoc();
        }
        $prep_query->free_result();
        return ($rows) ? $return_array : false;
    }

    static public function set_money($user, $money)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("UPDATE `users` SET `user_money` = ? WHERE `user_id` = ?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("di", $money, $user);
        $prep_query->execute();
        $rows = $prep_query->affected_rows;
        return ($rows >= 1) ? true : false;
    }

    static public function get_groups()
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("SELECT `groups`.*, COUNT(`users`.`user_group`) as `group_members_count` FROM `groups`
        LEFT JOIN `users` ON `users`.`user_group` = `groups`.`group_id`
        GROUP BY `groups`.`group_id`")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        $return_array = [];
        for ($i = 0; $i < $rows; $i++)
            $return_array[] = $result->fetch_assoc();
        $prep_query->free_result();
        return ($rows) ? $return_array : false;
    }

    static public function get_group($groupId)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("SELECT `groups`.*, COUNT(`user_id`) as `group_members_count` FROM `groups`
        LEFT JOIN `users` ON `users`.`user_group` = `groups`.`group_id`
        WHERE `group_id` = ?
        GROUP BY `users`.`user_group`")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("i", $groupId);
        $prep_query->execute();
        $result = $prep_query->get_result();
        $rows = $result->num_rows;
        $returnResult = $result->fetch_assoc();
        $prep_query->free_result();
        return ($rows) ? $returnResult : false;
    }

    static public function set_group($groupId, $name, $color, $price)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("UPDATE `groups` SET `group_name` = ?, `group_color` = ?, `group_package_price` = ? WHERE `group_id` = ?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ssdi", $name, $color, $price, $groupId);
        $prep_query->execute();
        return ($prep_query->affected_rows) ? true : false;
    }

    static public function new_group($name, $color, $price)
    {
        var_dump($name, $color, $price);
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("INSERT INTO `groups` (group_name, group_color, group_package_price) VALUES (?, ?, ?)")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ssd", $name, $color, $price);
        $prep_query->execute();
        var_dump($prep_query);
        return ($prep_query->affected_rows) ? true : false;
    }
}