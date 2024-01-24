<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  if (isset($_POST['bicep'])) {
    $output = array();
    $ret_code = 0;
    $reps = $_POST['reps'];
    exec("python newbicep.py $reps 2>&1", $output, $ret_code);
    if ($ret_code != 0) {
      echo "Error running script.";
    } else {
      echo "Squats script ran successfully. Output: ";
      print_r($output);
    }
  } else if (isset($_POST['lateral_raises'])) {
    $output = array();
    $ret_code = 0;
    $reps = $_POST['reps'];
    exec("python lateral_raises.py $reps 2>&1", $output, $ret_code);
    if ($ret_code != 0) {
      echo "Error running script.";
    } else {
      echo "Lateral Raises script ran successfully. Output: ";
      print_r($output);
    }
  } else if (isset($_POST['squats'])) {
    $output = array();
    $ret_code = 0;
    $reps = $_POST['reps'];
    exec("python squats.py $reps 2>&1", $output, $ret_code);
    if ($ret_code != 0) {
      echo "Error running script.";
    } else {
      echo "Squats script ran successfully. Output: ";
      print_r($output);
    }
  } else if (isset($_POST['shoulder'])) {
    $output = array();
    $ret_code = 0;
    $reps = $_POST['reps'];
    exec("python shoulderpress.py $reps 2>&1", $output, $ret_code);
    if ($ret_code != 0) {
      echo "Error running script.";
    } else {
      echo "shoulder script ran successfully. Output: ";
      print_r($output);
    }
  }else if (isset($_POST['front_raises'])) {
    $output = array();
    $ret_code = 0;
    $reps = $_POST['reps'];
    exec("python front_raises.py $reps 2>&1", $output, $ret_code);
    if ($ret_code != 0) {
      echo "Error running script.";
    } else {
      echo "front Raises script ran successfully. Output: ";
      print_r($output);
    }
  } 
  else if (isset($_POST['pushups'])) {
    $output = array();
    $ret_code = 0;
    $reps = $_POST['reps'];
    exec("python pushups.py $reps 2>&1", $output, $ret_code);
    if ($ret_code != 0) {
      echo "Error running script.";
    } else {
      echo "pushups script ran successfully. Output: ";
      print_r($output);
    }
  } 
  header("Location: {$_SERVER['PHP_SELF']}");
  exit();
}

?>

<html>

  <style>

html {
    height:100%;
  }
  
  body {
    margin:0;
    background-image: url('images1/bg.jpg');
  background-repeat: no-repeat;
  background-size: cover;
 background-attachment:fixed;
  
  
  
  }
  
  .bg {
    /* background: rgb(2,0,36); */
    /* background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%); */
   
  
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
  .title{
    font-style: italic;
    font-weight:bolder;
    font-size: xx-large;
    padding-top: 10px;
    
  }



  .container{
    /* border-width: 5px;
    border-style: solid;
    border-color: black;
    border-radius: 20px; */
    margin-left: 10%;
    margin-right: 15%;
    align-items: center;
    
  }




  .container1{
            display: flex;
            align-content: flex-end;
            /* background-color: black; */
           
        }
        .row1{
            flex-direction: row;
            
            margin-left: 50px;
        }
    .form1{
        /* flex-direction: row;
        background-color: red; */
        /* height: 30px;
        width: 20px; */
        margin-left: 150px;
        margin-top:100px;
        width: 250px;
        height: 30px;
        border-style: solid;
        border-color: blue;
        border-radius: 5px;
        border-width: 1px;
        text-align: center;
        

    }
    .form1 input{
        width: 250px;
        height: 30px;
        /* background-color: blueviolet; */
        font-weight: bold;
        text-align: center;
    }

    .container2{
        padding-top: 50px;
            display: flex;
            align-content: flex-end;
            /* background-color: black; */
        }
        .row2{
            flex-direction: row;
            margin-left: 50px;
        }

        .form2{
        /* flex-direction: row;
        background-color: red; */
        /* height: 30px;
        width: 20px; */
        margin-left: 150px;
        margin-top:100px;
        width: 250px;
        height: 30px;
        border-style: solid;
        border-color: blue;
        border-radius: 5px;
        border-width: 1px;
        
    }
    .form2 input{
        width: 250px;
        height: 30px;
        font-weight: bold;
        /* background-color: blueviolet; */
    }
   

    .container3{
        padding-top: 50px;
            display: flex;
            align-content: flex-end;
            /* background-color: black; */
        }
        .row3{
            flex-direction: row;
            margin-left: 50px;
        }
        .form3{
        /* flex-direction: row;
        background-color: red; */
        /* height: 30px;
        width: 20px; */
        margin-left: 150px;
        margin-top:100px;
        width: 250px;
        height: 30px;
        border-width: 1px;
        border-style: solid;
        border-color: blue;
        border-radius: 5px;
        
    }
    .form3 input{
        width: 250px;
        height: 30px;
        font-weight: bold;
        /* background-color: blueviolet; */
    }
   
    .container4{
        padding-top: 50px;
            display: flex;
            align-content: flex-end;
            /* background-color: black; */
        }
        .row4{
            flex-direction: row;
            margin-left: 50px;
        }
        .form4{
        /* flex-direction: row;
        background-color: red; */
        /* height: 30px;
        width: 20px; */
        margin-left: 150px;
        margin-top:100px;
        width: 250px;
        height: 30px;
        border-width: 1px;
        border-style: solid;
        border-color: blue;
        border-radius: 5px;
        
    }
    .form4 input{
        width: 250px;
        height: 30px;
        font-weight: bold;
        /* background-color: blueviolet; */
    }
   

    .container5{
        padding-top: 50px;
            display: flex;
            align-content: flex-end;
            /* background-color: black; */
        }
        .row5{
            flex-direction: row;
            margin-left: 50px;
        }
        .form5{
        /* flex-direction: row;
        background-color: red; */
        /* height: 30px;
        width: 20px; */
        margin-left: 150px;
        margin-top:100px;
        width: 250px;
        height: 30px;
        border-width: 1px;
        border-style: solid;
        border-color: blue;
        border-radius: 5px;
        
    }
    .form5 input{
        width: 250px;
        height: 30px;
        font-weight: bold;
        /* background-color: blueviolet; */
    }
   
    .container6{
        padding-top: 50px;
            display: flex;
            align-content: flex-end;
            /* background-color: black; */
        }
        .row6{
            flex-direction: row;
            margin-left: 50px;
        }
        .form6{
        /* flex-direction: row;
        background-color: red; */
        /* height: 30px;
        width: 20px; */
        margin-left: 150px;
        margin-top:100px;
        width: 250px;
        height: 30px;
        border-width: 1px;
        border-style: solid;
        border-color: blue;
        border-radius: 5px;
        
    }
    .form6 input{
        width: 250px;
        height: 30px;
        font-weight: bold;
        /* background-color: blueviolet; */
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
    font-family:'Times New Roman', Times, serif;
    border-style: solid;
    border-color: black;
    border-radius: 5px;
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
    <!-- Navigation -->
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

    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>


  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="stylesheets/stylesheet.css">
  
  
  <head>
  
    <title> Wellness </title> 
  
  </head> 

<body>


<h1 class="title" style="text-align:center" > Select Workout </h1>

<div class="container">
<div class="container1">
<div class="row1">
<?php
function getYoutubeEmbeddedURL($url){
    return "https://www.youtube.com/embed/".getYoutubeID($url);

}
function getYoutubeID($url){
    $queryString = parse_url($url,PHP_URL_QUERY);
    parse_str($queryString,$params);
    if(isset($params['v']) && strlen($params['v'])>0){
        return $params['v'];
    }
    else{
        return '';
    }
}
$url = 'https://www.youtube.com/watch?v=ykJmrZ5v0Oo';
$embed_code='<iframe width="560" height="315" src="' .getYoutubeEmbeddedURL($url).'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
echo $embed_code;
?>
</div>
<li>
<form method="post" class="form1">
<input type="submit" class="input" name="bicep" value="Run Bicep Rep Counter">
<!-- <button type="button" onclick="alert('Hello world!')">Click Me!</button> -->
</form>
</li>
</div>



<div class="container2">
<div class="row2">
<?php
function getYoutubeEmbeddedURL1($url){
    return "https://www.youtube.com/embed/".getYoutubeID($url);

}
function getYoutubeID1($url){
    $queryString = parse_url($url,PHP_URL_QUERY);
    parse_str($queryString,$params);
    if(isset($params['v']) && strlen($params['v'])>0){
        return $params['v'];
    }
    else{
        return '';
    }
}
$url = 'https://www.youtube.com/watch?v=WJm9zA2NY8E';
$embed_code='<iframe width="560" height="315" src="' .getYoutubeEmbeddedURL($url).'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
echo $embed_code;
?>
</div>
<li>
<form method="post" class="form2">
<input type="submit" name="lateral_raises" value="Run Lateral Raises Rep Counter">
<!-- <button type="button" onclick="alert('Hello world!')">Click Me!</button> -->
</form>
</li>
</div>
<div class="container3">
<div class="row3">
<?php
function getYoutubeEmbeddedURL3($url){
    return "https://www.youtube.com/embed/".getYoutubeID($url);

}
function getYoutubeID3($url){
    $queryString = parse_url($url,PHP_URL_QUERY);
    parse_str($queryString,$params);
    if(isset($params['v']) && strlen($params['v'])>0){
        return $params['v'];
    }
    else{
        return '';
    }
}
$url = 'https://www.youtube.com/watch?v=YaXPRqUwItQ';
$embed_code='<iframe width="560" height="315" src="' .getYoutubeEmbeddedURL($url).'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
echo $embed_code;
?>
</div>
<li>
<form method="post" class="form3">
<input type="submit" name="squats" value="Run Squats Rep Counter">
<!-- <button type="button" onclick="alert('Hello world!')">Click Me!</button> -->
</form>

</li>


</div>
<div class="container4">
<div class="row4">
<?php
function getYoutubeEmbeddedURL4($url){
    return "https://www.youtube.com/embed/".getYoutubeID($url);

}
function getYoutubeID4($url){
    $queryString = parse_url($url,PHP_URL_QUERY);
    parse_str($queryString,$params);
    if(isset($params['v']) && strlen($params['v'])>0){
        return $params['v'];
    }
    else{
        return '';
    }
}
$url = 'https://www.youtube.com/watch?v=qEwKCR5JCog';
$embed_code='<iframe width="560" height="315" src="' .getYoutubeEmbeddedURL($url).'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
echo $embed_code;
?>
</div>
<li>
<form method="post" class="form4">
<input type="submit" name="shoulder" value="Run Shoulder Raises Rep Counter">
<!-- <button type="button" onclick="alert('Hello world!')">Click Me!</button> -->
</form>
</li>
</div>

<div class="container5">
<div class="row5">
<?php
function getYoutubeEmbeddedURL5($url){
    return "https://www.youtube.com/embed/".getYoutubeID($url);

}
function getYoutubeID5($url){
    $queryString = parse_url($url,PHP_URL_QUERY);
    parse_str($queryString,$params);
    if(isset($params['v']) && strlen($params['v'])>0){
        return $params['v'];
    }
    else{
        return '';
    }
}
$url = 'https://www.youtube.com/watch?v=ugPIPY7j-GM';
$embed_code='<iframe width="560" height="315" src="' .getYoutubeEmbeddedURL($url).'" <iframe width="560" height="315" src="https://www.youtube.com/embed/ugPIPY7j-GM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
echo $embed_code;
?>
</div>
<li>
<form method="post" class="form5">
<input type="submit" class="input" name="front_raises" value="Run Front Raises Rep Counter">
<!-- <button type="button" onclick="alert('Hello world!')">Click Me!</button> -->
</form>
</li>
</div>

<div class="container6">
<div class="row6">
<?php
function getYoutubeEmbeddedURL6($url){
    return "https://www.youtube.com/embed/".getYoutubeID($url);

}
function getYoutubeID6($url){
    $queryString = parse_url($url,PHP_URL_QUERY);
    parse_str($queryString,$params);
    if(isset($params['v']) && strlen($params['v'])>0){
        return $params['v'];
    }
    else{
        return '';
    }
}
$url = 'https://www.youtube.com/watch?v=IODxDxX7oi4';
$embed_code='<iframe width="560" height="315" src="' .getYoutubeEmbeddedURL($url).'" <iframe width="560" height="315" src="https://www.youtube.com/embed/IODxDxX7oi4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
echo $embed_code;
?>
</div>
<li>
<form method="post" class="form6">
<input type="submit" class="input" name="pushups" value="Run Pushups Rep Counter">
<!-- <button type="button" onclick="alert('Hello world!')">Click Me!</button> -->
</form>
</li>
</div>

</div>
</body>
</html>