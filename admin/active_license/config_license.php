<?php
$root = $_SERVER['DOCUMENT_ROOT'];
require_once($root . '/admin/config.php');
//////////////////////////////////////////////////////////////////////////////////////////////////
$db = mysql_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD) or die("Не удалось соединится с базой данных");
mysql_select_db(DB_DATABASE) or die("Не удалось найти базу данных:". DB_DATABASE);
mysql_query("SET NAMES 'utf8'");
///////////////////////////////////////////////////////////////////////////////////////////////////
?>
