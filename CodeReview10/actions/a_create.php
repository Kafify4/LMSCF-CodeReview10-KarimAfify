<?php 

require_once 'db_connect.php';

if ($_POST) {
   $type = $_POST['type'];
   $title = $_POST['title'];
   $imglk = $_POST['image'];
   $author = $_POST['author'];
   $publisher = $_POST['publisher'];
   $pdate = $_POST['publish_date'];
   $ISBN = $_POST['ISBN'];
   $descritpion = $_POST['short_description'];


   $sql = "INSERT INTO media (`type`, title, `image`, author, publisher, ISBN, publish_date, `short_description`) VALUES ('$type', '$title', '$imglk','$author', '$publisher', '$ISBN', '$pdate', '$descritpion')";
    if($connect->query($sql) === TRUE) {
      echo "<!DOCTYPE html>
<html>
<head>
   <title>Success!</title>
</head>
<body style='background-color:indianred';>";
       echo "<div>
       <h1 style='color:Gold';>New Book Added!</h1>
       </div>";
       echo "<div>
       <div>
       <a href='../create.php'><button class='btn btn-primary p-5 w-25' type='button'><h2>Add another Book</h2></button></a>
       </div>";
        echo "<div>
        <a href='../index.php'><button class='btn btn-primary p-5 w-25' type='button'><h2>Return to Home</h2></button></a>
        </div>
        </div>";
        echo "</body>";

   } else  {
       echo 'Error ' . $sql . ' ' . $connect->connect_error;
   }

   $connect->close();
}

?>