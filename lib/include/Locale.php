<?php
/**
 * Created by PhpStorm.
 * User: Tuxick
 * Date: 09.03.2015
 * Time: 6:55
 */

namespace Base;

class Locale
{
    private $locale_text;
    private $locale_sets;
    private $locale_array;

    public function __construct($text)
    {
        $this->locale_text = $text;
    }

    public function loadLocale($filename)
    {
        $this->locale_sets = file_get_contents($filename);
        $this->locale_array = [];
        $strings = explode("\n", $this->locale_sets);
        foreach ($strings as $string) {
            $tmp = explode("=", $string);
            $this->locale_array[$tmp[0]] = $tmp[1];
        }
    }

    public function localize()
    {
        preg_match_all("/\{LOCALE:(.*?)\}/", $this->locale_text, $matches);
        foreach ($matches[1] as $item) {
            $this->locale_text = str_replace("{LOCALE:" . $item . "}", $this->locale_array[$item], $this->locale_text, $count);
        }
        return $this->locale_text;
    }

    public function set_value($_alias, $_value)
    {
        $count = 0;
        $this->template_text = str_replace("{VALUE:" . $_alias . "}", $_value, $this->template_text, $count);
        return $count;
    }
}