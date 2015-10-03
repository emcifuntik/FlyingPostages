<?php
/**
 * @author: emcif
 * @date: 21-Apr-15
 * @time: 06:12
 */
require_once "lib/include/Get.php";
require_once "lib/include/Request.php";
require_once "lib/include/Template.php";
require_once "lib/include/Locale.php";

$content = "";
$action = isset($GET->action) ? $GET->action : "main";
switch ($action) {
    case "main":
        $mainTemplate = new \Base\Template("template/", "index.tpl");
        $tempText = $mainTemplate->finish();
        $mainLocale = new \Base\Locale($tempText);
        $mainLocale->loadLocale("localization/ru_RU.lng");
        die($mainLocale->localize());
        break;
    case "login":
        if (isset($GET->query)) include "pages/login_query.php";
        else include "pages/login.php";
        break;
    case "register":
        if (isset($GET->query)) include "pages/register_query.php";
        else include "pages/register.php";
        break;
    case "user_edit":
        if (isset($GET->query)) include "pages/user_edit_query.php";
        else include "pages/user_edit.php";
        break;
    default:
        include "pages/default.php";
        break;
}