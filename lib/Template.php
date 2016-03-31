<?php
/**
 * Created by PhpStorm.
 * User: Tuxick
 * Date: 09.03.2015
 * Time: 6:55
 */

class Template
{
    private $template_text;
    private $template_file;
    private $template_original;

    public function __construct()
    {
        $a = func_get_args();
        $i = func_num_args();
        if (method_exists($this, $f = '__construct' . $i)) {
            call_user_func_array(array($this, $f), $a);
        }
    }

    public function __construct1($text)
    {
        $this->template_text = $text;
        $this->template_original = $this->template_text;
    }

    public function __construct2($_folder, $_filename)
    {
        $this->template_file = $_folder . $_filename;
        $this->template_text = file_get_contents($this->template_file);
        $this->template_original = $this->template_text;
        $this->set_value("PATH", $_folder);
    }

    public function set_value($_alias, $_value)
    {
        $count = 0;
        $this->template_text = str_replace("{VALUE:" . $_alias . "}", $_value, $this->template_text, $count);
        return $count;
    }

    public function load_block($_blockname)
    {
        preg_match("#\{BLOCK:BEGIN:" . $_blockname . "\}(.+?)\{BLOCK:END:" . $_blockname . "\}#si", $this->template_text, $matches);
        if (isset($matches[1])) {
            $blocktext = $matches[1];
        } else $blocktext = false;
        return new Template($blocktext);
    }

    public function replace_block($_blockname, $_content)
    {
        $this->template_text = preg_replace("#\{BLOCK:BEGIN:" . $_blockname . "\}(.+?)\{BLOCK:END:" . $_blockname . "\}#si",
            $_content,
            $this->template_text);
    }

    public function set_switch_value($_switchname, $_value)
    {
        $case_text = false;
        preg_match("#\{CASE:BEGIN:" . $_value . "\}(.+?)\{CASE:END:" . $_value . "\}#si", $this->template_text, $matches);
        if (isset($matches[1])) {
            $case_text = $matches[1];
        }
        $this->template_text = preg_replace("#\{SWITCH:BEGIN:" . $_switchname . "\}(.+?)\{SWITCH:END:" . $_switchname . "\}#si",
            $case_text,
            $this->template_text);
    }

    public function set_tab($_tabname, $tabLink)
    {
        preg_match("#\{TABS:BEGIN:(.*?)" . $_tabname . "(.*?)\}(.+?)\{TABS:END:(.*?)" . $_tabname . "(.*?)\}#si", $this->template_text, $matches);
        if (isset($matches[3])) {
            $tabstext = $matches[3];
        } else $tabstext = false;

        if($tabstext !== false)
        {
            $this->template_text = preg_replace("#\{TABS:BEGIN:(.*?)" . $_tabname . "(.*?)\}(.*?)\{TABS:END:(.*?)" . $_tabname . "(.*?)\}#si",
                $tabstext,
                $this->template_text);
        }

        preg_match("#\{TAB:BEGIN:" . $_tabname . "\}(.+?)\{TAB:END:" . $_tabname . "\}#si", $this->template_text, $matches);
        if (isset($matches[1])) {
            $tabtext = $matches[1];
            $tabTemplate = new Template($tabtext);
            $tabTemplate->set_value("TAB_LINK", $tabLink);
            $this->template_text = preg_replace("#\{TAB:BEGIN:" . $_tabname . "\}(.+?)\{TAB:END:" . $_tabname . "\}#si",
                $tabTemplate->finish(),
                $this->template_text);
        }
    }

    public function reset()
    {
        $this->template_text = $this->template_original;
    }

    public function finish()
    {
        $this->template_text = preg_replace("#\{TABS:BEGIN:(.*?)\}(.*?)\{TABS:END:(.*?)\}#si",
            "",
            $this->template_text);
        $this->template_text = preg_replace("#\{TAB:BEGIN:(.*?)\}(.*?)\{TAB:END:(.*?)\}#si",
            "",
            $this->template_text);
        return $this->template_text;
    }
}