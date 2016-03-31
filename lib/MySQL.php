<?php

/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 05.02.2016
 * Time: 12:42
 */
include "Config.php";

class MySQL extends Config
{
    private static $instance = null;
    public static function GetInstance()
    {
        if(self::$instance == null)
            self::$instance = new mysqli(parent::GetHostname(), parent::GetUsername(), parent::GetPasswd(), parent::GetDbName(), parent::GetPort());
        return self::$instance;
    }
}