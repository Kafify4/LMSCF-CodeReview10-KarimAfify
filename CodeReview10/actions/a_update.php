<?php 

require_once 'db_connect.php';

if ($_POST) {
    $tit = $_POST['title'];
    $image = $_POST['image'];
    $auth = $_POST[ 'author'];
    $isbn = $_POST[ 'ISBN'];
    $desc = $_POST[ 'short_description'];
    $puda = $_POST[ 'publish_date'];
    $pub = $_POST[ 'publisher'];
    $type = $_POST[ 'type'];

   $id = $_POST['id'];

   $sql = "UPDATE media SET title = '$tit', `image` = '$image', author = '$auth', ISBN = '$isbn', short_description = '$desc', 
   publish_date = '$puda', publisher = '$pub', `type` = '$type'  WHERE id = {$id}" ;
   if($connect->query($sql) === TRUE) {
       echo "<!DOCTYPE html>
<html>
<head>
   <title>Successfully Updated!</title>
</head>
<body style='background-color:indianred';>";
       echo "<div>
       <h1 style='color:Gold;'>Successfully Updated</h1>
       </div>";
       echo "<div>
       <a href='../index.php?id=" .$id."'><button class='btn btn-primary p-5 w-100' type='button'><h2>Home</h2></button></a>";
   } else {
        echo "Error while updating record : ". $connect->error;
   }

   $connect->close();
}
?>