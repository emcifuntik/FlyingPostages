<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 03.10.2015
 * Time: 15:48
 */
if(isset($COOKIE->access) && User::get_data($COOKIE->access) !== false) header("Location: index.php");
$mainTemplate = new \Base\Template("template/", "login.tpl");
$tempText = $mainTemplate->finish();
die($tempText);
$mainLocale = new \Base\Locale($tempText);
$mainLocale->loadLocale("localization/".$user["user_language"].".lng");
die($mainLocale->localize());