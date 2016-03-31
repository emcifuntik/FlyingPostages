<?php

/**
 * Log short summary.
 *
 * Log description.
 *
 * @version 1.0
 * @author emcif
 * @date 05.05.2015
 * @time 11:19
 *
 * Log actions:
 * 1. User group edit
 */
class Log
{
    public static $mysql = null;

    const USER_GROUP_EDIT = 1;
    const USER_LOGIN = 2;
    const USER_REGISTER = 3;
    const USER_ADD_MONEY = 4;
    const USER_GET_MONEY = 5;

    public static function write($action, $color, $arguments)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("INSERT INTO `logs` (`log_action`, `log_color`, `log_arguments`) VALUES (?, ?, ?)")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $concatted = implode(",", $arguments);
        $prep_query->bind_param("iss", $action, $color, $concatted);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return true;
        } else {
            $prep_query->free_result();
            return false;
        }
    }
}
