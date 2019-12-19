<html>
<body>
<h1> Random Quote Finder</h1>
<form action="index.php" method="GET">
<input type="hidden" value="yes" name="quote">
<?php
if($_GET["quote"] == "yes")
{
	# Connect to database
	$conn = new mysqli("mysql","root","","quotes");
	# Get total quotes
	$sql = "SELECT count(index_ref) FROM quotes";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	$total = $row["count(index_ref)"];
	# Randomly select a number between the number of quotes available and 1
	$quote = rand(1, $total);
	# Get that quote from the database
	$sql = "SELECT quote FROM quotes where index_ref = ".$quote;
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	$quote = $row["quote"];
	# Present those results and an updated submit button
	echo "<h3>Your quote:</h3><p>".$quote."</p>";
	echo "<input type='submit' value='Get me another Quote!'>";
}
else
{
	# Inital display when there isnt a quote
	echo "<input type='submit' value='Get me a Quote!'>";
}
?>
</form>
</body>
</html>