<?php
		$mysqllink=@mysql_connect('localhost','root','abcd1234')or die("mysql connect error--");
		$db_select=@mysql_select_db("monitor")or die(" db select error");
		mysql_set_charset("utf8",$mysqllink);