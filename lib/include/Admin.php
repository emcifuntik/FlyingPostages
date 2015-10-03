<?php

/**
 * Admin functions
 *
 * This class contains all administrator's functions
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:21
 */
class Admin
{
    static public $mysql = null;

    static public function change_user_group($id, $group)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE users,groups SET users.`user_group`=? WHERE users.`user_id`=? AND groups.`group_id`=?") //group exist
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("iii", $group, $id, $group);
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

    static public function add_user_money($id, $value)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE users SET `user_money`=`user_money` + ? WHERE `user_id`=?")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("ii", $value, $id);
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

    static public function get_user_money($id, $value)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE users SET `user_money`=`user_money` - ? WHERE `user_id`=? AND `user_money` >= ?")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("iii", $value, $id, $value);
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

    static public function add_group($name, $color, $package_price, $privileges, $tabs)
    {
        $prep_query = Admin::$mysql->prepare("INSERT INTO `groups` (`group_name`, `group_color`, `group_package_price`," .
            " `group_add_news`, `group_edit_news`, `group_delete_news`, `group_moderate_postages`, `group_delete_postages`," .
            " `group_refund_postages`, `group_edit_user`, `group_edit_money`, `group_edit_groups`, `group_tabs`) VALUES " .
            "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("ssiiiiiiiiiis",
            $name,
            $color,
            $package_price,
            $privileges["add_news"],
            $privileges["edit_news"],
            $privileges["delete_news"],
            $privileges["moderate_package"],
            $privileges["delete_postage"],
            $privileges["refund_postage"],
            $privileges["edit_user"],
            $privileges["edit_money"],
            $privileges["edit_groups"],
            $tabs
        );
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

    static public function chane_group_name($id, $name)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE `groups` SET `group_name`=? WHERE `group_id`=? LIMIT 1")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("si", $name, $id);
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

    static public function change_group_color($id, $color)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE `groups` SET `group_color`=? WHERE `group_id`=? LIMIT 1")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("si", $color, $id);
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

    static public function change_group_package_price($id, $price)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE `groups` SET `group_package_price`=? WHERE `group_id`=? LIMIT 1")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("ii", $price, $id);
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

    static public function change_group_privileges($id, $privileges)
    {
        $prep_query = Admin::$mysql->prepare("UPDATE `groups` SET `group_add_news`=?," .
            "`group_edit_news`=?," .
            "`group_delete_news`=?," .
            "`group_moderate_postages`=?," .
            "`group_delete_postages`=?," .
            "`group_refund_postages`=?," .
            "`group_edit_user`=?," .
            "`group_edit_money`=?," .
            "`group_edit_groups`=?," .
            " WHERE `group_id`=? LIMIT 1")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("iiiiiiiiii",
            $privileges["add_news"],
            $privileges["edit_news"],
            $privileges["delete_news"],
            $privileges["moderate_package"],
            $privileges["delete_postage"],
            $privileges["refund_postage"],
            $privileges["edit_user"],
            $privileges["edit_money"],
            $privileges["edit_groups"],
            $id
        );
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

    static public function delete_group($id)
    {
        $prep_query = Admin::$mysql->prepare("DELETE FROM `groups` WHERE `group_id`=?")
        or die('MySQL Error. Error[' . Admin::$mysql->errno . ']: ' . Admin::$mysql->error);
        $prep_query->bind_param("i", $id);
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

    static public function create_privileges($add_news, $edit_news, $delete_news, $moderate_packages, $delete_postages, $refund_postages, $edit_user, $edit_money, $edit_groups)
    {
        $response = array(
            "add_news" => $add_news,
            "edit_news" => $edit_news,
            "delete_news" => $delete_news,
            "moderate_packages" => $moderate_packages,
            "delete_postages" => $delete_postages,
            "refund_postages" => $refund_postages,
            "edit_user" => $edit_user,
            "edit_money" => $edit_money,
            "edit_groups" => $edit_groups
        );
        return $response;
    }
}
