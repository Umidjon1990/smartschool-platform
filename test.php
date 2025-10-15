<?php
// Simple test to check if PHP and database work
echo "<h1>SmartSchool Test</h1>";
echo "<p>PHP version: " . phpversion() . "</p>";

// Test database connection
$host = getenv('MYSQL_HOST');
$port = getenv('MYSQL_PORT');
$user = getenv('MYSQL_USER');
$pass = getenv('MYSQL_PASSWORD');
$db = getenv('MYSQL_DATABASE');

echo "<p>Database host: " . htmlspecialchars($host) . ":" . htmlspecialchars($port) . "</p>";

$mysqli = new mysqli($host, $user, $pass, $db, $port);

if ($mysqli->connect_error) {
    die("<p style='color:red'>Database connection failed: " . htmlspecialchars($mysqli->connect_error) . "</p>");
}

echo "<p style='color:green'>Database connected successfully!</p>";

// Test query
$result = $mysqli->query("SELECT COUNT(*) as count FROM sch_settings");
if ($result) {
    $row = $result->fetch_assoc();
    echo "<p>Settings table has " . $row['count'] . " rows</p>";
} else {
    echo "<p style='color:red'>Query failed: " . htmlspecialchars($mysqli->error) . "</p>";
}

$mysqli->close();

echo "<p><a href='/'>Go to SmartSchool Home</a></p>";
?>
