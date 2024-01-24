<!DOCTYPE html>


<html>

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
  
  
  <head>
  
    <title> Fitness Tracker</title> 
  
  </head> 
  
 
  <body> 
  <!-- add a logo --> 
  

  
  <!-- Navigation -->
  <div class="topnav">
    <div class="topnav-right">
      <a href="homePageAfterUserLogIn.php">Home</a>
      <a href="afterUserLogIn.php">Dashboard</a>
      <a href="wellnessTest.php">Wellness Test</a>
      <!-- <a href="challenge.php">Monthly Challenge</a> -->
      <a href="newsfeed.php">Newsfeed</a>
      <a href="fitnessTrack.php">Fitness Tracking</a>
      <a href="dietTrack.php">Diet Tracking</a>
      <a href="exercise-library.php">View Exercise</a>
      <a href="login.php">Sign-Out</a>
    </div>
  </div>

  <div class = "logo"><a href = "homePageAfterUserLogIn.php"><img src = "images1/img27.png" style="width:10%"></a>
  </div>
  
     <?php 
		include('server.php');
		include('errors.php');   
	?>
  
  <form method="post" action="addFood.php">
	
		<center>
		<br> 
		<div class="input-group">
			 <label>Enter the date you want to track</label>
			 <input type="date" name="date" required>
		</div>
		<br> 
		<div class="input-group">
			 <label>How much did you weigh on that day? (kg)</label>
			 <input type="number" name="weight" required maxlength = 3 style="width: 80px;>
		</div>
		<br>
		<br>
		<div class="input-group">
			<br>
			<button type="submit" formaction = dietTrack.php class="btn" 3 style="width: 80px;" name="submit_diet_info">Submit</button>
			<button type="submit" formaction = addFood.php class="btn" style="width: 220px;" name="submit_diet_info">Submit and track nutrition</button>
		</div>
  </form>
  
</body>

      <!-- circle dots -->
  <br>
  <div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
  </div>
</html>