<?php
/**
 * @author: emcif
 * @date: 21-Apr-15
 * @time: 06:12
 */
require "lib/lib.php";

$content = "";
$action = isset($GET->action) ? $GET->action : "main";
switch ($action) {
    case "main":
        include "pages/main.php";
        break;
    case "change_language":
        include "pages/change_language.php";
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
    case "logout":
        include "pages/logout.php";
        break;
    default:
        include "pages/default.php";
        break;
}