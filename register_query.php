<?php
/**
 * @author: emcif
 * @date: 24-Apr-15
 * @time: 04:57
 */
require_once "lib/User.php";
require_once "lib/Response.php";
require_once "lib/Globals.php";
require_once "lib/Log.php";
require_once "lib/Config.php";

if (isset($POST->username) && isset($POST->password)) {
    $result = User::register($POST->username, $POST->password);

    if ($result !== false) {
        Log::write(Log::USER_REGISTER, "00FF00", array($result));
        Response::success();
    } else {
        Response::fatal_error("This name already registered");
    }
}