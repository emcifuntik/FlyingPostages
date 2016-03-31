<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 19.03.2016
 * Time: 11:02
 */
if(!defined("MAIN_LOADED"))
    $content = new Template("template/", "access_error.tpl");
else {
    $content = new Template("template/", "users.tpl");
    $users = User::get_users(0, 30);
    $userRow = $content->load_block("USER_ROW");
    $usersRows = "";
    foreach ($users as $user) {
        $userRow->reset();
        $userRow->set_value("USER_NAME", $user["user_name"]);
        $userRow->set_value("GROUP", $user["group_name"]);
        $userRow->set_value("GROUP_COLOR", $user["group_color"]);
        $userRow->set_value("MONEY", $user["user_money"]);
        $userRow->set_value("REGISTER_DATE", $user["user_regdate"]);
        $userRow->set_value("LAST_LOGIN_DATE", $user["user_lastlogin"]);
        $usersRows .= $userRow->finish();
    }
    $content->replace_block("USER_ROW", $usersRows);
}