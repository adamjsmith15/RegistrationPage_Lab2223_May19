<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Name animation</title>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,300' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" type="text/css" href="/style.css">
  
  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      body {
  background-color: black;
}

.container {
  width: 700px;
  height: 400px;
  margin: 3% auto;
  position: relative;
}
.container .line {
  position: absolute;
  margin-left: auto;
  margin-right: auto;
  right: 0;
  left: 0;
  top: -40px;
  background-color: white;
  width: 1px;
  height: 0px;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #F0C27B), color-stop(100%, #4B1248));
  background-image: -webkit-linear-gradient(#F0C27B, #4B1248);
  background-size: 200% 200%;
  animation: AnimationName 5s ease infinite;
}
.container .line-1 {
  border-left: 20px rgba(0, 0, 255, 1.0);
  -webkit-backface-visibility: hidden;
  left: -25px;
}
.container .line-2 {
  border-right: 22px rgba(0, 0, 255, 1.0);
  left: 14px;
}
.container .text {
  color: white;
  text-transform: uppercase;
  font-family: 'Lato';
  font-weight: 300;
  font-size: 75px;
  text-align: left;
  width: 0px;
  margin-top: 150px;
  margin-left: 290px;
  overflow: hidden;
  transform: rotate(35deg);
  position: relative;
  height: 100%;
}
.container .text span {
  transform: rotate(-35deg);
  position: absolute;
  top: 27px;
  right: 0;
  left: -7px;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #F0C27B), color-stop(100%, #4B1248));
  background-image: -webkit-linear-gradient(#F0C27B, #4B1248);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  color: #fff;
  background-size: 200% 200%;
  animation: AnimationName 5s ease infinite;
}

/*Gradient animation from http://www.gradient-animator.com/*/
@keyframes AnimationName {
  0% {
    background-position: 0% 88%;
  }
  50% {
    background-position: 100% 13%;
  }
  100% {
    background-position: 0% 88%;
  }
}

    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <div id="background-animation-container">
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
  <div class="ani-bubble"></div>
</div>

<div id="content-container">
</div>


  <div class="container">
  <div class="line line-1"></div>
  <div class="line line-2"></div>
  <div class="text"><span>${ nM }</span></div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js'></script>

  

    <script  src="/index.js"></script>




</body>

</html>
