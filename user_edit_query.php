<?php
/**
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:29
 */
require_once "lib/Admin.php";
require_once "lib/User.php";
require_once "lib/Response.php";
require_once "lib/Globals.php";
require_once "lib/Log.php";
require_once "lib/Config.php";

$func = isset($GET->func) ? $GET->func : null;
switch ($func) {
    case "change_group":
        if (!isset($COOKIE->access)) {
            Response::fatal_error("Not authorized");
            exit;
        }
        $user_data = User::get_data($COOKIE->access);
        if ($user_data === false) {
            Response::fatal_error("Session expired");
            exit;
        }
        $user_priv = User::get_privelegies($COOKIE->access);
        if ($user_priv["group_edit_user"] == 0) {
            Response::fatal_error("You have no access");
            exit;
        }
        if (!isset($REQUEST->user_id)) {
            Response::fatal_error("Field `user_id` not initialized");
            exit;
        }
        if (!isset($REQUEST->group_id)) {
            Response::fatal_error("Field `group_id` not initialized");
            exit;
        }
        if (Admin::change_user_group($REQUEST->user_id, $REQUEST->group_id)) {
            Log::write(Log::USER_GROUP_EDIT, "00FF00",
                array(
                    $REQUEST->user_id, $REQUEST->group_id
                )
            );
            Response::success();
            exit;
        } else {
            Response::fatal_error("Group or user does not exist");
            exit;
        }
        break;
    case "add_money":
        if (!isset($COOKIE->access)) {
            Response::fatal_error("Not authorized");
            exit;
        }
        $user_data = User::get_data($COOKIE->access);
        if ($user_data === false) {
            Response::fatal_error("Session expired");
            exit;
        }
        $user_priv = User::get_privelegies($COOKIE->access);
        if ($user_priv["group_edit_money"] == 0) {
            Response::fatal_error("You have no access");
            exit;
        }
        if (!isset($REQUEST->user_id)) {
            Response::fatal_error("Field `user_id` not initialized");
            exit;
        }
        if (!isset($REQUEST->value)) {
            Response::fatal_error("Field `value` not initialized");
            exit;
        }
        if (Admin::add_user_money($REQUEST->user_id, $REQUEST->value)) {
            Log::write(Log::USER_ADD_MONEY, "0000AA",
                array(
                    $REQUEST->user_id, $REQUEST->value
                )
            );
            Response::success();
            exit;
        } else {
            Response::fatal_error("Unregistered error");
            exit;
        }
        break;
    case "get_money":
        if (!isset($COOKIE->access)) {
            Response::fatal_error("Not authorized");
            exit;
        }
        $user_data = User::get_data($COOKIE->access);
        if ($user_data === false) {
            Response::fatal_error("Session expired");
            exit;
        }
        $user_priv = User::get_privelegies($COOKIE->access);
        if ($user_priv["group_edit_money"] == 0) {
            Response::fatal_error("You have no access");
            exit;
        }
        if (!isset($REQUEST->user_id)) {
            Response::fatal_error("Field `user_id` not initialized");
            exit;
        }
        if (!isset($REQUEST->value)) {
            Response::fatal_error("Field `value` not initialized");
            exit;
        }
        if (Admin::get_user_money($REQUEST->user_id, $REQUEST->value)) {
            Log::write(Log::USER_GET_MONEY, "0000AA",
                array(
                    $REQUEST->user_id, $REQUEST->value
                )
            );
            Response::success();
            exit;
        } else {
            Response::fatal_error("User have no money");
            exit;
        }
        break;
    default:

        break;
}