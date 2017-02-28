<?php
function printResult($result, $link, $method, $key){
  if ($method == 'GET' || $method == 'POST') {
    if (!$key) echo '[';
    for ($i=0;$i<mysqli_num_rows($result);$i++) {
      echo ($i>0?',':'').json_encode(mysqli_fetch_object($result));
    }
    if (!$key) echo ']';
  } elseif ($method == 'POST1') {
    echo mysqli_insert_id($link);
  } else {
    echo mysqli_affected_rows($link);
  }
} 

function switchMetod($method, $key, $table){
 switch ($method) {
  case 'GET':
    $sql = "select * from `$table`".($key?" WHERE id=$key":''); break;
  case 'PUT':
    $sql = "update `$table` set $set where id=$key"; break;
  case 'POST':
    $sql = "select * from `$table`".($key?" WHERE id=$key":''); break;
  case 'DELETE':
    $sql = "delete `$table` where id=$key"; break;
 }
 return $sql;
}
?>