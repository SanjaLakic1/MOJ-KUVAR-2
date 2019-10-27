<!DOCTYPE html>

<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
    <style>
     /*   .carousel-inner img {
            width: 80%;
        }
        .row img {
            width:100%;
        }*/
        .carousel-inner div {
            text-align: center;
        }
        .carousel-control-prev-icon, .carousel-control-next-icon {
            background-color:white;
        }
    </style>
</head>

<body>
<?php
session_start();
 if(isset($_SESSION['username']) && $_SESSION['username'] != "")
                {
                   
                 }
            else{
                    header('Location: login.php'); //redirect URL
                }
        ?>

<a href = "logout.php" tite = "Logout">Logout</a>

<!-- POCETAK HOME -->
<div id="home">

<!--
- d-none podesava da nema carousela za sve rezolucije
- d-sm-block podesava display block carousela pocev od sm rezolucije
- u kombinaciji daju da nema carousela za najmanju rezoluciju (mobilne telegone)
-->
<div id="demo" class="carousel slide d-none d-sm-block" data-ride="carousel">

	<ul class="carousel-indicators">
		<li data-target="#demo" data-slide-to="0" class="active"></li>
		<li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
	</ul>
	
	<div class="carousel-inner">
		<div class="carousel-item active">
            <img src="green1.jpg">
            <div class="carousel-caption">
            </div>
		</div>
		<div class="carousel-item">
            <img src="green2.jpg">
            <div class="carousel-caption">
            </div>
		</div>
		<div class="carousel-item">
            <img src="green3.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="carousel-item">
            <img src="green4.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="carousel-item">
            <img src="green5.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="carousel-item">
            <img src="green6.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="carousel-item">
            <img src="green7.jpg">
            <div class="carousel-caption">
            </div>
		</div>
	
	
	
	</div>
	
	<a class="carousel-control-prev" href="#demo" data-slide="prev">
		<span class="carousel-control-prev-icon"></span>
    </a>
    
	<a class="carousel-control-next" href="#demo" data-slide="next">
		<span class="carousel-control-next-icon"></span>
	</a>
</div>

<!-- pocev od sm rezolucije, naredne slike se nece videti -->

<div class="row d-sm-none">
    <div class="col-12"><img src="green1.jpg"></div>
</div>

<div class="row d-sm-none">
    <div class="col-12"><img src="green2.jpg"></div>
</div>

<div class="row d-sm-none">
    <div class="col-12"><img src="green3.jpg"></div>
</div>

<div class="row d-sm-none">
    <div class="col-12"><img src="green4.jpg"></div>
</div>

</div>
<!-- KRAJ HOME -->

<!-- POCETAK MAIN -->
<div id="main">

<div class="row" style="padding-top: 60px;">

<div class="col-sm-6">
    <h1>Kuvar</h1>

    <a href="kuvarzabebe.html"><h3>Kuvar za bebe</h3></a>
    <a href="kuvarbezglutena.html"><h3>Kuvar - bez glutena</h3></a>

    <p></p>
</div>

<div class="col-sm-6">
    <h1>Kuvar prema namirnicama koje imate</h1>
   <a href="selektujtenamirnice.php"> <h3>Selektujete namirnice</h3>
    
</div>

</div> <!-- ovde je kraj od row -->

</div>
<!-- KRAJ MAIN -->


</body>

</html>
