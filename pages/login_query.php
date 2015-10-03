<?php
/**
 * @author: emcif
 * @date: 24-Apr-15
 * @time: 05:01
 */
require_once "lib/include/User.php";
require_once "lib/include/Response.php";
require_once "lib/include/Cookie.php";
require_once "lib/include/Post.php";
require_once "lib/include/Get.php";
require_once "lib/include/Log.php";
require_once "lib/config.php";

$mysql = new mysqli($mysql_config["host"], $mysql_config["user"], $mysql_config["password"], $mysql_config["database"], $mysql_config["port"])
or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
User::$mysql = Log::$mysql = $mysql;

if (isset($POST->username) && isset($POST->password)) {
    if ($result = User::login($POST->username, $POST->password)) {
        $COOKIE->access = $result[0];
        Log::write(Log::USER_LOGIN, "FFFFFF", array($result[1]));
        return Response::success();
    }
    Response::fatal_error("This combination of name and password not found");
}