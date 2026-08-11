<?php
// database connection details
$host = 'localhost'; // database host
$username = 'root'; // database username
$password = ''; // database password
$dbname = 'cafe'; // database name

// create a database connection
$conn = mysqli_connect($host, $username, $password, $dbname);

// check if the connection is successful
if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

// check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	
    // get form data
	$name = $_POST['name'];
    $email = $_POST['email'];
    $item = $_POST['item'];
    $quantity = $_POST['quantity'];

    // prepare the SQL query
    $sql = "INSERT INTO bill (name, email, item, quantity) VALUES ('$name', '$email', '$item', '$quantity')";
	$price=0;
	// Calculate the total price
	if (mysqli_query($conn, $sql)) {
		if ($item == 'coffee') {
			$price = 2.50;
		} elseif ($item == 'tea') {
			$price = 2.00;
		} elseif ($item == 'sandwich') {
			$price = 4.50;
		} elseif ($item == 'cake') {
			$price = 3.00;
		}
		$total = $price * $quantity;
	}
		// Print the order details
		echo "<h1>Order Details</h1>";
		echo "<p><strong>Name:</strong> " . $name . "</p>";
		echo "<p><strong>Email:</strong> " . $email . "</p>";
		echo "<p><strong>Item:</strong> " . ucfirst($item) . "</p>";
		echo "<p><strong>Quantity:</strong> " . $quantity . "</p>";
		echo "<p><strong>Total Price:</strong> $" . number_format($total, 2) . "</p>";
    // execute the query
    if (mysqli_query($conn, $sql)) {
        echo "New record inserted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    } 
}	
// close the database connection
mysqli_close($conn);

?>