<?php

/**
 * Error short summary.
 *
 * Error description.
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:34
 */
class Response
{
    static public function fatal_error($text)
    {
        header("Content-Type: application/json");
        echo(
        json_encode(
            array("result" => "fail", "message" => $text),
            JSON_PRETTY_PRINT
        )
        );
        die(0);
    }

    static public function success($array = array())
    {
        header("Content-Type: application/json");
        echo(
        json_encode(
            array("result" => "success", "data" => $array),
            JSON_PRETTY_PRINT
        )
        );
        die(0);
    }
}
