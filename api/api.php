<?php
require "user-function.php";
require "connection-db.php";

$resultDb = connectToDB('id', 'name', 'description', 'amount', null);
$method = $resultDb[0];
$request = $resultDb[1];
$input = $resultDb[2];
$link = $resultDb[3];

// retrieve the table and key from the path
$table = preg_replace('/[^a-z0-9_]+/i','',array_shift($request));
$key = array_shift($request)+0;
  // escape the columns and values from the input object
$columns = preg_replace('/[^a-z0-9_]+/i','',array_keys($input));

$values = array_map(function ($value) use ($link) {
  if ($value===null) return null;
  return mysqli_real_escape_string($link,(string)$value);
},array_values($input));
 header('Content-Type: application/json');
// build the SET part of the SQL command
$set = "";
for ($i=0;$i<count($columns);$i++) {
  $set.=($i>0?',':'').'`'.$columns[$i].'`=';
  $set.=($values[$i]===null?'NULL':'"'.$values[$i].'"');
}
// create SQL based on HTTP method
$sql = switchMetod($method, $key, $table);
 // excecute SQL statement
$result = mysqli_query($link,$sql);
//var_dump($result);
// die if SQL statement failed
if (!$result) {
  http_response_code(404);
  die(mysqli_error());
}
// print results, insert id or affected row count
printResult($result, $link, $method, $key);
// close mysql connection
mysqli_close($link);
?>