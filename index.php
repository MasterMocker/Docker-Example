<html>
<body>
<h1> Random Quote Finder</h1>
<form action="index.php" method="GET">
<input type="hidden" value="yes" name="quote">
<?php
if($_GET["quote"] == "yes")
{
	# Get quote
	$conn = new mysqli("mysql","root","","quotes");
	$sql = "SELECT count(index_ref) FROM quotes";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	$total = $row["count(index_ref)"];
	$quote = rand(1, $total);
	$sql = "SELECT quote FROM quotes where index_ref = ".$quote;
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	$quote = $row["quote"];
	echo "<h3>Your quote:</h3><p>".$quote."</p>";
	echo "<input type='submit' value='Get me another Quote!'>";
}
else
{
	echo "<input type='submit' value='Get me a Quote!'>";
}
?>
</form>
</body>
</html>