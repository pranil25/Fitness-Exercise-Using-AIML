<?php 
    session_start();
    include_once("./exercises.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Exercises</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles.css">
    <style>

html {
    height:100%;
  }
  
  body {
    margin:0;
  }
  
  .bg {
    background-image: url('images1/bg.jpg');
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

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="stylesheets/stylesheet.css">
    <script type = "text/javascript" src="./exercise-library-nav.js"></script>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div class = "logo"><a href = "homePageAfterUserLogIn.php"><img src = "images/img27.jpg" style="width:10%"></a>
  </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="topnav">
          
    <div class="topnav-right">
    <a href="homePageAfterUserLogIn.php">Home</a>
    <a href="afterUserLogIn.php">Dashboard</a>
      <!-- <a href="wellnessTest.php">Wellness Test</a> -->
      <!-- <a href="challenge.php">Monthly Challenge</a> -->
      <a href="newsfeed.php">Newsfeed</a>
      <a href="fitnessTrack.php">Fitness Tracking</a>
      <!-- <a href="dietTrack.php">Diet Tracking</a> -->
      <a href="exercise-library.php">View Exercise</a>
      <a href="yt.php">Live Exercise</a>
      <a href="login.php">Sign-Out</a>
    </div>
  </div>
    </nav>
    <div class="jumbotron">
    <h1 class="display-4">Exercise Library</h1>
    <p class="lead">Select a muscle group to view available exercises for that muscle.</p>
    <hr class="my-4">
    <div class="row justify-content-center">
        <button class="btn btn-outline-secondary m-1" data-toggle="collapse" href="#Chest" role="button" aria-expanded="false" aria-pressed="false" aria-controls="chest" onclick="setLinkStatus(this)" id="chest">Chest</button>           
        <button class="btn btn-outline-secondary m-1" data-toggle="collapse" href="#Back" role="button" aria-expanded="false" aria-controls="back" onclick="setLinkStatus(this)" id="back">Back</button>            
        <button class="btn btn-outline-secondary m-1" data-toggle="collapse" href="#Triceps" role="button" aria-expanded="false" aria-controls="triceps" onclick="setLinkStatus(this)" id="triceps">Triceps</button>           
        <button class="btn btn-outline-secondary m-1" data-toggle="collapse" href="#Biceps" role="button" aria-expanded="false" aria-controls="biceps" onclick="setLinkStatus(this)" id="biceps">Biceps</button>           
        <button class="btn btn-outline-secondary m-1" data-toggle="collapse" href="#Legs" role="button" aria-expanded="false" aria-controls="legs" onclick="setLinkStatus(this)" id="legs">Legs</button> 
        <button class="btn btn-outline-secondary m-1" data-toggle="collapse" href="#Shoulders" role="button" aria-expanded="false" aria-controls="shoulders" onclick="setLinkStatus(this)" id="shoulders">Shoulders</button>
    </div>
    <div class="row justify-content-center">
        <form class="form-inline m-1" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name='searchTerm'>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <form class="form-inline m-1" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <button href="./exercise-library.php" class="btn btn-outline-warning my-2 m-1 my-sm-0">Reset</button>
        </form>
    </div>
    </div>
    
    <div class="container-fluid">
        <?php 
            displayExerciseCards($pdo);
            searchExercises($pdo); 
        ?>
    </div>
</body>
</html>