<?php
/**
 * @author: emcif
 * @date: 24-Apr-15
 * @time: 05:01
 */
require "lib/User.php";
require "lib/Log.php";
require "lib/Response.php";

if (isset($POST->username) && isset($POST->password)) {
    if ($result = User::login($POST->username, $POST->password)) {
        if(!isset($POST->remember) || $POST->remember != "on")
            $COOKIE->set_expire(null);
        $COOKIE->access = $result[0];
        Log::write(Log::USER_LOGIN, "FFFFFF", array($result[1]));
        if(isset($GET->redirect) && $GET->redirect == true)
            header("Location: index.php");
        Response::success();
        exit;
    }
    Response::fatal_error("This combination of name and password not found");
    exit;
}