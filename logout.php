<?php
session_start();
if(isset($_SESSION['zalogowany'])) {
unset($_SESSION['zalogowany']);
}
session_destroy(); // niszczenie sesji
?>