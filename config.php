<?php
$db_host='localhost';
$db_user='root';
$db_pwd='';
$database='live_search';

if(!mysql_connect($db_host,$db_user,$db_pwd))
die("can't Connect to Database");

if(!mysql_select_db($database))
die("can't Select Database");
?>