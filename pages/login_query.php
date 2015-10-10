<?php
/**
 * @author: emcif
 * @date: 24-Apr-15
 * @time: 05:01
 */

$mysql = new mysqli($mysql_config["host"], $mysql_config["user"], $mysql_config["password"], $mysql_config["database"], $mysql_config["port"])
or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
User::$mysql = Log::$mysql = $mysql;

if (isset($POST->username) && isset($POST->password)) {
    if ($result = User::login($POST->username, $POST->password)) {
        $COOKIE->access = $result[0];
        Log::write(Log::USER_LOGIN, "FFFFFF", array($result[1]));
        if(isset($GET->redirect) && $GET->redirect == true)
            header("Location: index.php");
        Response::success();
    }
    Response::fatal_error("This combination of name and password not found");
}