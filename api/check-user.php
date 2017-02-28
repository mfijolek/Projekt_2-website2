<?php
session_start();
require "connection-db.php";
 $login = $_POST['login'];
 $password =$_POST['password'];
if(!empty($password) && !empty($login)){
	$resultDb = connectToDB('id', 'name', 'password', 'flag', 'user');
	$method = $resultDb[0];
	$request = $resultDb[1];
	$input = $resultDb[2];
	$link = $resultDb[3];

	$sql = "SELECT * FROM `user` WHERE  `name` = '$login'";

	$result = mysqli_fetch_array(mysqli_query($link, $sql));

	if($password == $result['password'] && $login == $result['name'] ){
		echo "<h2>Brawo, zalogowałeś się: ".$result['name']."</h2>";
		$_SESSION['logowanie']=$login;
		header("refresh:2;url=../logowanie.html"); 
	} else {
		echo "<h2>Niepoprawne hasło lub login</h2>";
	}
	mysqli_close($link);
} else {
	echo "<h2>Brak hasła lub loginu</h2>";
}
?>