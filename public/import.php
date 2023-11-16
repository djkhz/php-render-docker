<?php

// Replace these values with your PostgreSQL database credentials
$dbParams = parse_url('postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a:5432/mysqlrender');

$host_pg = $dbParams['host'];
$port_pg = $dbParams['port'];
$dbname_pg  = ltrim($dbParams['path'], '/');
$user_pg = $dbParams['user'];
$password_pg = $dbParams['pass'];

//$dsn = "pgsql:host=$host;port=$port;dbname=$db;user=$user;password=$pass";

// $dbname_pg = 'your_postgresql_database';
// $user_pg = 'your_postgresql_user';
// $password_pg = 'your_postgresql_password';
// $host_pg = 'your_postgresql_host';
// $port_pg = 'your_postgresql_port';

// Replace with the path to your converted SQL dump file
$sql_dump_file = 'lao-province-district-villages.sql';

// Connect to PostgreSQL
$conn_pg = pg_connect("dbname=$dbname_pg user=$user_pg password=$password_pg host=$host_pg port=$port_pg");

if (!$conn_pg) {
    die("Error in connection: " . pg_last_error());
}

// Read and execute SQL dump file
$sql_content = file_get_contents($sql_dump_file);

$result = pg_query($conn_pg, $sql_content);

if (!$result) {
    die("Error in executing SQL: " . pg_last_error());
}

// Close PostgreSQL connection
pg_close($conn_pg);

echo "Data imported from MySQL to PostgreSQL successfully!";
?>
