<?php 

require_once 'db_connect.php';

if ($_POST) {
   $id = $_POST['id'];

   $sql = "DELETE FROM media WHERE id = {$id}";
    if($connect->query($sql) === TRUE) {
       echo "<!DOCTYPE html>
<html>
<head>
   <title>Deleted!</title>
</head>
<body style='background-color:indianred';>";
       echo "<div>
       <h1 style='color:Gold;'>Deleted!</h1>
       </div>";
       echo "<div>
       <a href='../index.php'><button class='btn btn-primary p-5 w-100' type='button'><h2>Return to Home</h2></button></a>";
   } else {
       echo "Error updating record : " . $connect->error;
   }

   $connect->close();
}

?>