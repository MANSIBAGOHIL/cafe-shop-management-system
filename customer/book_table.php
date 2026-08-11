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
$sql_create = "CREATE TABLE IF NOT EXISTS book_table (
    `name` VARCHAR(255) NOT NULL,
    `phone_no` CHAR(10) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `person_count` INT NOT NULL,
    `booking_date` DATE NOT NULL)";


if (mysqli_query($conn, $sql_create)) {
    echo "Table created successfully. ";
} else {
    echo "Error creating table: " . mysqli_error($conn);
}
// check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	
    // get form data
	$name = $_POST['name'];
    $phone_no = $_POST['phone_no'];
    $email = $_POST['email'];
    $person = $_POST['person'];
    $date = $_POST['date'];

    // prepare the SQL query
    $sql = "INSERT INTO book_table (name, phone_no, email, person_count, booking_date) VALUES ('$name', '$phone_no', '$email', '$person', '$date')";
    // Print the order details
    echo "<h1>Booking Details</h1>";
    echo "<p><strong>Name:</strong> " . $name . "</p>";
    echo "<p><strong>Phone No:</strong> " . $phone_no . "</p>";
    echo "<p><strong>Email:</strong> " . $email . "</p>";
    echo "<p><strong>Number of Person:</strong> " .$person . "</p>";
    echo "<p><strong>Date:</strong> " . $date . "</p>";
    // execute the query
    if (mysqli_query($conn, $sql)) {
        echo "Your booking is done!!!";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    } 
}	
// close the database connection
mysqli_close($conn);

?>