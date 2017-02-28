<?php
session_start();
if(!isset($_SESSION['logowanie']))
{ //sprawdzamy czy jestesmy zalogowani
include('form.php');
exit();
}
?>