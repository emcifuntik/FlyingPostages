<?php

/**
 * Post short summary.
 *
 * Post description.
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 14:10
 */
class Post
{
    public function __get($name)
    {
        if (!isset($_POST[$name])) {
            $trace = debug_backtrace();
            trigger_error(
                'Undefined property via __get(): ' . $name .
                ' in ' . $trace[0]['file'] .
                ' on line ' . $trace[0]['line'],
                E_USER_NOTICE);
            return null;
        } else return $_POST[$name];
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
        return isset($_POST[$name]);
    }
}

$POST = new Post;