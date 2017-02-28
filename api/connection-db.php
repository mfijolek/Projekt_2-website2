<?php
function connectToDB($el1, $el2, $el3, $el4, $table){
	// get the HTTP method, path and body of the request
	$method = $_SERVER['REQUEST_METHOD'];
	if($method=='GET' || $table == null){
		$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
	}else {
		$request = $table;
	}
	$input= array($el1, $el2, $el3, $el4);
	$link = mysqli_connect('localhost', 'root', '', 'api_elements');
	mysqli_set_charset($link,'utf8');
	return array($method, $request, $input, $link);
}
?>