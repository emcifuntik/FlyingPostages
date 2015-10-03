<?php

/**
 * Post short summary.
 *
 * Post description.
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 20:12
 */
class Request
{
    public function __get($name)
    {
        if (!isset($_REQUEST[$name])) {
            $trace = debug_backtrace();
            trigger_error(
                'Undefined property via __get(): ' . $name .
                ' in ' . $trace[0]['file'] .
                ' on line ' . $trace[0]['line'],
                E_USER_NOTICE);
            return null;
        } else return $_REQUEST[$name];
    }

    public function __set($name, $value)
    {
        $trace = debug_backtrace();
        trigger_error(
            'Constant field can\'t be changed: ' . $name .
            ' in ' . $trace[0]['file'] .
            ' on line ' . $trace[0]['line'],
            E_USER_ERROR);
        return null;
    }

    public function __isset($name)
    {
        return isset($_REQUEST[$name]);
    }
}

$REQUEST = new Request;