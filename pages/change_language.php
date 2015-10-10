<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 03.10.2015
 * Time: 17:00
 */

if(isset($GET->language))
{
    if($GET->language == "ru")
        User::set_language($COOKIE->access, "ru_RU");
    else if($GET->language == "en")
        User::set_language($COOKIE->access, "en_EN");
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
exit;