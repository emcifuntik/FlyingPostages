<?php
/**
 * @author: emcif
 * @date: 24-Apr-15
 * @time: 04:57
 */
require_once "lib/include/User.php";
require_once "lib/include/Response.php";
require_once "lib/include/Cookie.php";
require_once "lib/include/Post.php";
require_once "lib/include/Get.php";
require_once "lib/include/Log.php";
require_once "lib/config.php";

$_POST["username"] = "tuxick";
$_POST["password"] = "123";

$mysql = new mysqli($mysql_config["host"], $mysql_config["user"], $mysql_config["password"], $mysql_config["database"], $mysql_config["port"])
or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
User::$mysql = Log::$mysql = $mysql;

if (isset($POST->username) && isset($POST->password)) {
    $result = User::register($POST->username, $POST->password);

    if ($result !== false) {
        Log::write(Log::USER_REGISTER, "00FF00", array($result));
        Response::success();
    } else {
        Response::fatal_error("This name already registered");
    }
}