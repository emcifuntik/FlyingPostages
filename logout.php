<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 03.10.2015
 * Time: 17:24
 */
require "lib/User.php";

if(isset($COOKIE->access))
    User::logout($COOKIE->access);
header("Location: index.php?action=login");
exit;