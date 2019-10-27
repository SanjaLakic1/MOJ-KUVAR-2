<html>
<body>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "projekat";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname );

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(!empty($_POST['check_list'])){
	$selektovaneNamirnice = "(";
	foreach($_POST['check_list'] as $selected){
		$selektovaneNamirnice .= $selected;
		$selektovaneNamirnice .= ",";
	}
	$selektovaneNamirnice = rtrim($selektovaneNamirnice,',');
	$selektovaneNamirnice .=")";
	//echo $selektovaneNamirnice;
	$query = "select distinct r.Ime as htmlName,re.Ime as nameRecepta, count(*) as broj from receptnamirnica r
	join recept re on r.ReceptID = re.Id where r.NamirniceId in ";
	$query .= $selektovaneNamirnice;
	$query .= " group by r.receptID having broj= ( select count(*) from receptnamirnica where receptId = r.ReceptID)";
	
	$result = mysqli_query($conn,$query);
	while($row = mysqli_fetch_array($result)){
		echo "<a href='recepti/".$row['htmlName']."'><h3>".$row['nameRecepta']."</h3></a>";
	}
		 
}
$conn->close();


?>
 
</body>
</html>
