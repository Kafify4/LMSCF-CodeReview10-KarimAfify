<?php require_once 'actions/db_connect.php'; ?>
<!DOCTYPE html>
<html>
<head>
   <title>Code Review 10</title>
</head>
<body>
<div>
   <div class="d-flex justify-content-center m-5">
   <a href= "create.php"><button style='color:Gold;'class=" p-5 btn btn-primary" type="button"><h1>New Book</h1></button></a>
   </div>
  <div class="d-flex justify-content-center mb-5">
   <table border="2">
       <thead style="background-color:indianred;">
           <tr class="bg-info">
               <th class="text-center"><h3 style="color:white;">Cover</h3></th>
               <th class="text-center"><h3 style="color:white;">Genre</h3></th>
               <th class="text-center"><h3 style="color:white;">Title</h3></th>
               <th class="text-center"><h3 style="color:white;">Author</h3></th>
               <th class="text-center"><h3 style="color:white;">ISBN Code</h3></th>
               <th class="text-center"><h3 style="color:white;">Description</h3></th>
               <th class="text-center"><h3 style="color:white;">First Pubished</h3></th>
               <th class="text-center"><h3 style="color:white;">Publisher</h3></th>
               <th class="text-center"><h3 style="color:white;">Edit</h3></th>
               <th class="text-center"><h3 style="color:white;">Delete</h3></th>
           </tr>
       </thead>
       <tbody class="bg-success text-dark", style="background-color:gold;">
        <?php
           $sql = "SELECT * FROM media";
           $result = $connect->query($sql);
            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                   echo  "<tr>
                       <td class='text-center'><img src= ' " .$row['image']." ' width='120px'></td>
                       <td class='text-center'>" .$row['type']."</td>
                       <td class='text-center'>" .$row['title']."</td>
                       <td class='text-center'>" .$row['author']."</td>
                       <td class='text-center'>" .$row['ISBN']."</td>
                       <td class='text-center'>" .$row['short_description']."</td>
                       <td class='text-center'>" .$row['publish_date']."</td>
                       <td class='text-center'>" .$row['publisher']."</td>
                       <td class='text-center'>
                           <a href='update.php?id=" .$row['id']."'><button class='btn btn-primary' type='button'>Update Entry</button></a>
                       </td>
                       <td class='text-center'>
                           <a href='delete.php?id=" .$row['id']."'><button style='background-color:red;'class='btn btn-danger'  type='button'>Delete Entry</button></a>
                       </td>
                   </tr>" ;
               }
           } else  {
               echo  "<tr><td colspan='5'>No Data Avaliable</td></tr>";
           }
            ?>
       </tbody>
   </table>
   </div>
</div>
</body>
</html>