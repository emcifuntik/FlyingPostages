<?php
/**
 * @author: emcif
 * @date: 21-Apr-15
 * @time: 06:12
 */
require "lib/Globals.php";

$content = "";
$action = isset($GET->action) ? $GET->action : "main";
switch ($action) {
    case "main":
        include "main.php";
        break;
    case "change_language":
        include "change_language.php";
        break;
    case "login":
        if (isset($GET->query)) include "login_query.php";
        else include "login.php";
        break;
    case "register":
        if (isset($GET->query)) include "register_query.php";
        //else include "register.php";
        break;
    case "user_edit":
        if (isset($GET->query)) include "user_edit_query.php";
        //else include "user_edit.php";
        break;
    case "logout":
        include "logout.php";
        break;
    case "var_dump":
        if($_SERVER["REMOTE_ADDR"] == "127.0.0.1") {
            echo "<h1>SERVER</h1>";
            var_dump($_SERVER);
            echo "<h1>GET</h1>";
            var_dump($_GET);
            echo "<h1>POST</h1>";
            var_dump($_POST);
            echo "<h1>COOKIE</h1>";
            var_dump($_COOKIE);
            echo "<h1>FILES</h1>";
            var_dump($_FILES);
            echo "<h1>ENV</h1>";
            var_dump($_ENV);
            if (isset($_SESSION)) {
                echo "<h1>SESSION</h1>";
                var_dump($_SESSION);
            }
        }
        break;
    case "post_label":
        include "post_label.php";
        break;
    default:
        include "default.php";
        break;
}