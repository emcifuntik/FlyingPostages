<?php

/**
 * Cookie short summary.
 *
 * Cookie description.
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:39
 */
class Cookie
{
    private $expire = 2592000;//One month

    public function __set($name, $value)
    {
        setcookie($name, $value, time() + $this->expire);
    }

    public function __get($name)
    {
        if (!isset($_COOKIE[$name])) {
            $trace = debug_backtrace();
            trigger_error(
                'Undefined property via __get(): ' . $name .
                ' in ' . $trace[0]['file'] .
                ' on line ' . $trace[0]['line'],
                E_USER_NOTICE);
            return null;
        } else return $_COOKIE[$name];
    }

    public function __isset($name)
    {
        return isset($_COOKIE[$name]);
    }

    public function __unset($name)
    {
        setcookie($name, "", 1);
    }

    public function set_expire($value)
    {
        $this->expire = $value;
    }

    static public function set($name, $value, $time = 0, $path = "", $domain = "", $secure = false, $httponly = false)
    {
        return setcookie($name, $value, $time, $path, $domain, $secure, $httponly);
    }

    static public function get($name)
    {
        return isset($_COOKIE[$name]) ? $_COOKIE[$name] : false;
    }

    static public function clear($name)
    {
        return setcookie($name, "", 1);
    }

    static public function is_empty($name)
    {
        return isset($_COOKIE[$name]);
    }
}

$COOKIE = new Cookie;