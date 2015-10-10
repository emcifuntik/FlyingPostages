<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 03.10.2015
 * Time: 15:46
 */

if(!isset($COOKIE->access)) {
    header("Location: index.php?action=login");
    exit;
}
$user = User::get_data($COOKIE->access);
if($user === false) {
    header("Location: index.php?action=login");
    exit;
}
$mainTemplate = new \Base\Template("template/", "index.tpl");
$mainTemplate->set_value("USER_NAME", $user["user_name"]);
$mainTemplate->set_value("USER_BALANCE", number_format($user["user_money"], 2));
$lang = "Unknown";
if($user["user_language"] == "ru_RU") $lang = "Русский";
else if($user["user_language"] == "en_EN") $lang = "English";
$mainTemplate->set_value("CURRENT_LANGUAGE", $lang);

$content = null;

$tab = isset($GET->tab) ? $GET->tab : "home";
switch($tab)
{
    case "home":
        $content = new Base\Template("template/", "tab_home.tpl");
        break;
    case "new_label":
        $content = new Base\Template("template/", "tab_new_label.tpl");
        break;
    case "my_labels":
        $content = new Base\Template("template/", "tab_my_labels.tpl");
        $table_row = $content->load_block("TABLE_ROW");
        $table_row->set_value("LABEL_ID", "Empty");
        $table_row->set_value("SENDER_NAME", "Empty");
        $table_row->set_value("RECIPIENT_NAME", "Empty");
        $table_row->set_value("TRACK_NUMBER", "Empty");
        $content->replace_block("TABLE_ROW", $table_row->finish());
        break;
}

$mainTemplate->set_value("CONTENT", $content->finish());
$tempText = $mainTemplate->finish();
$mainLocale = new \Base\Locale($tempText);
$mainLocale->loadLocale("localization/".$user["user_language"].".lng");
die($mainLocale->localize());