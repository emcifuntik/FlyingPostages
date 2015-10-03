<?php
/**
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:29
 */
require_once "lib/include/Admin.php";
require_once "lib/include/User.php";
require_once "lib/include/Response.php";
require_once "lib/include/Cookie.php";
require_once "lib/include/Post.php";
require_once "lib/include/Get.php";
require_once "lib/include/Request.php";
require_once "lib/include/Log.php";
require_once "lib/config.php";

$mysql = new mysqli($mysql_config["host"], $mysql_config["user"], $mysql_config["password"], $mysql_config["database"], $mysql_config["port"])
or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
User::$mysql = Admin::$mysql = Log::$mysql = $mysql;

$func = isset($GET->func) ? $GET->func : null;
switch ($func) {
    case "change_group":
        if (!isset($COOKIE->access)) return Response::fatal_error("Not authorized");
        $user_data = User::get_data($COOKIE->access);
        if ($user_data === false) return Response::fatal_error("Session expired");
        $user_priv = User::get_privelegies($COOKIE->access);
        if ($user_priv["group_edit_user"] == 0) return Response::fatal_error("You have no access");
        if (!isset($REQUEST->user_id)) return Response::fatal_error("Field `user_id` not initialized");
        if (!isset($REQUEST->group_id)) return Response::fatal_error("Field `group_id` not initialized");
        if (Admin::change_user_group($REQUEST->user_id, $REQUEST->group_id)) {
            Log::write(Log::USER_GROUP_EDIT, "00FF00",
                array(
                    $REQUEST->user_id, $REQUEST->group_id
                )
            );
            return Response::success();
        } else return Response::fatal_error("Group or user does not exist");
    case "add_money":
        if (!isset($COOKIE->access)) return Response::fatal_error("Not authorized");
        $user_data = User::get_data($COOKIE->access);
        if ($user_data === false) return Response::fatal_error("Session expired");
        $user_priv = User::get_privelegies($COOKIE->access);
        if ($user_priv["group_edit_money"] == 0) return Response::fatal_error("You have no access");
        if (!isset($REQUEST->user_id)) return Response::fatal_error("Field `user_id` not initialized");
        if (!isset($REQUEST->value)) return Response::fatal_error("Field `value` not initialized");
        if (Admin::add_user_money($REQUEST->user_id, $REQUEST->value)) {
            Log::write(Log::USER_ADD_MONEY, "0000AA",
                array(
                    $REQUEST->user_id, $REQUEST->value
                )
            );
            return Response::success();
        } else return Response::fatal_error("Unregistered error");
    case "get_money":
        if (!isset($COOKIE->access)) return Response::fatal_error("Not authorized");
        $user_data = User::get_data($COOKIE->access);
        if ($user_data === false) return Response::fatal_error("Session expired");
        $user_priv = User::get_privelegies($COOKIE->access);
        if ($user_priv["group_edit_money"] == 0) return Response::fatal_error("You have no access");
        if (!isset($REQUEST->user_id)) return Response::fatal_error("Field `user_id` not initialized");
        if (!isset($REQUEST->value)) return Response::fatal_error("Field `value` not initialized");
        if (Admin::get_user_money($REQUEST->user_id, $REQUEST->value)) {
            Log::write(Log::USER_GET_MONEY, "0000AA",
                array(
                    $REQUEST->user_id, $REQUEST->value
                )
            );
            return Response::success();
        } else return Response::fatal_error("User have no money");
    default:

        break;
}