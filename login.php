<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 03.10.2015
 * Time: 15:48
 */
require "lib/Template.php";
require "lib/Localization.php";
require "lib/User.php";

if(isset($COOKIE->access) && User::get_data($COOKIE->access) !== false) header("Location: index.php");
$mainTemplate = new Template("template/", "login.tpl");
$tempText = $mainTemplate->finish();
$mainLocale = new Localization($tempText);
$mainLocale->loadLocale("localization/en_EN.lng");
die($mainLocale->localize());