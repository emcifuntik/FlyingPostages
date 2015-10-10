<?php
require "include/Get.php";
require "include/Post.php";
require "include/Request.php";
require "include/Template.php";
require "include/Locale.php";
require "include/User.php";
require "include/Cookie.php";
require "include/Log.php";
require "include/Response.php";
require "config.php";

$mysql = new mysqli($mysql_config["host"], $mysql_config["user"], $mysql_config["password"], $mysql_config["database"], $mysql_config["port"])
or die('MySQL Error. Error[' . User::$mysql->errno . ']: ' . User::$mysql->error);
User::$mysql = Log::$mysql = $mysql;