<?php
if(!defined('GPANEL')) die('^^ pazi struja drma');

$mysql_server = 'localhost';
$mysql_username = 'panel';
$mysql_password = 'ds1994';
$mysql_database = 'panel';
$mysql_charset = 'utf8';
$link = 'http://hosting.com/gpanel/';
$configs["email"] = 'info@hosting.com';
$configs["host"] = 'X1PT HOSTING';

$connect = mysql_connect($mysql_server, $mysql_username, $mysql_password) or die('Cannot connect to database!');
$select = mysql_select_db($mysql_database) or die('Cannot select database!');
mysql_query('SET  NAMES \''.$mysql_charset.'\'',$connect);
?>