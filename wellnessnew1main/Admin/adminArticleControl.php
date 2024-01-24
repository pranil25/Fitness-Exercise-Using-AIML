<!DOCTYPE html>


<html>


  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../stylesheets/stylesheet.css">
 



  
  
  <head>
  
    <title> Fitness Tracker </title> 

    </head> 



    <body> 
    <!-- add a logo --> 
    


    <!-- Navigation -->
    <div class="topnav">
    <div class="topnav-right">
        <a href="adminLogIn.php">Admin Sign-Out</a>
        <a href="adminArticleControl.php">Article Control</a>
        <!-- <a href="adminMonthlyChallengeControl.php">Monthly Challenge Control</a> -->
    </div>
    </div>


    <div class = "logo"><img src = "../images1/img27.png" style="width:10%"></a>
    </div>

    </body>




      
    
    <style>

html {
    height:100%;
  }
  
  body {
    margin:0;
  }
  
  .bg {
    background-image: url('../images1/bg.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
    bottom:0;
    left:-50%;
    opacity:.5;
    position:fixed;
    right:-50%;
    top:0;
    z-index:-1;
  }
  
  .bg2 {
    animation-direction:alternate-reverse;
    animation-duration:4s;
  }
  
  .bg3 {
    animation-duration:5s;
  }
  
  .content {
    background-color:rgba(255,255,255,.8);
    border-radius:.25em;
    box-shadow:0 0 .25em rgba(0,0,0,.25);
    box-sizing:border-box;
    left:50%;
    padding:10vmin;
    position:fixed;
    text-align:center;
    top:50%;
    transform:translate(-50%, -50%);
  }
  
  h1 {
    font-family:monospace;
  }
  
  @keyframes slide {
    0% {
      transform:translateX(-25%);
    }
    100% {
      transform:translateX(25%);
    }
  }


    </style> 

    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>



    
  <?php include('../server.php') ?>
   
  
   <!-- button to add content -->
   

  <!-- circle dots -->
  <br>
  <div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
  </div>



     <br>
     <br>


   <!--show all the article titles + their in the database -->
    <!--make a table -->

  


    <div class="container">

    <br>
    <div class="header">
          <h2>Articles in the Database </h2><hr>
   </div>
   
   <table class="table table-bordered" border="1" bgcolor="#FFFFFF">
    <thead>
    <tr>
    <th>Title</th>
    <th>URL</th>
    <th>Author</th>
    <th>URL</th>
    <th>Delete</th>
 
     </tr>
    </thead>
    <tbody>
    <tr>


    <?php

   $db = mysqli_connect('localhost', 'root', '', 'wellness');

   $user_check_query = "SELECT *  FROM articles";
   $result = mysqli_query($db, $user_check_query);

   if (!$result)
   {
      echo "<div style=\"text-align:center\">";
      echo "You do not have any articles bookmarked currently. Please add them.";
      return;
   }
 
   echo "<br>";
   while ($row = $result -> fetch_assoc())
   {
    
    echo '<tr>';
    echo '<td>' . $row['article_ID'] . '</td>';
    echo '<td>' . $row['ArticleTitle'] . '</td>';
    echo '<td>' . $row['ArticleAuthors'] . '</td>';
    echo "<td>";
    echo "<a href='{$row['urls']}' target='_new'> {$row['urls']} </a>";
    echo "</td>";
   
    echo "<form action='../server.php' method='post'>";
    echo '<td><button type="submit" formaction="../server.php" name = "delete_url" value =' . $row['urls'] . '>Delete</button></td>';
    echo "</form>";
    echo '</tr>';

   }
   
   
   ?>
    </table>

  
  <br>
  <br>
  <br>
  <p>
  <!-- circle dots -->
  <div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
  </div>
  </p>
    </body>

</html>