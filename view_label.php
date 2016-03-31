<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 06.02.2016
 * Time: 11:28
 */

require "lib/User.php";
require "lib/Template.php";
require "lib/Localization.php";

if(!isset($COOKIE->access)) {
    header("Location: index.php?action=login");
    exit;
}
$user = User::get_data($COOKIE->access);
if($user === false) {
    header("Location: index.php?action=login");
    exit;
}
$mainTemplate = new Template("template/", "index.tpl");
$mainTemplate->set_value("USER_NAME", $user["user_name"]);
$mainTemplate->set_value("USER_BALANCE", number_format($user["user_money"], 2));
$lang = "Unknown";
if($user["user_language"] == "ru_RU") $lang = "Русский";
else if($user["user_language"] == "en_EN") $lang = "English";
$mainTemplate->set_value("CURRENT_LANGUAGE", $lang);

$content = null;

$content = new Template("template/", "tab_new_label.tpl");