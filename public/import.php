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
// $sql_dump_file = 'lao-province-district-villages.sql';

// // Connect to PostgreSQL
// $conn_pg = pg_connect("dbname=$dbname_pg user=$user_pg password=$password_pg host=$host_pg port=$port_pg");

// if (!$conn_pg) {
//     die("Error in connection: " . pg_last_error());
// }

// // Read and execute SQL dump file
// $sql_content = file_get_contents($sql_dump_file);

// $result = pg_query($conn_pg, $sql_content);

// if (!$result) {
//     die("Error in executing SQL: " . pg_last_error());
// }

// // Close PostgreSQL connection
// pg_close($conn_pg);

// echo "Data imported from MySQL to PostgreSQL successfully!";

// Replace this with the path to your JSON file
$json_file_path = 'lao-province-district-villages.json';


// Read JSON file
$json_data = file_get_contents($json_file_path);

// Decode JSON data
$data = json_decode($json_data, true);

// Ensure the JSON data is an associative array
if (!is_array($data) || empty($data)) {
    die("Invalid JSON data.");
}

// Extract keys from JSON data for creating table columns
$keys = array_keys($data);
echo '<pre>'; print_r($keys); echo '</pre>';
echo '<pre>'; array_keys($keys); echo '</pre>';
// Create a string for table columns
$tableColumns = implode(',', array_map(function ($key) {
    return $key . ' TEXT';
}, $keys));
// pg_escape_identifier($key)
// Create a string for column names in the insert query
// $columnNames = implode(',', array_map('pg_escape_identifier', $keys));
$columnNames = implode(',', array_map(function ($key) {
    return $key;
}, $keys['dristric']));
// Create a string for values in the insert query
// $values = implode(',', array_map(function ($key) {
//     return "'" . ($data["'".$key."'"]) . "'";
// }, $keys));
$values = implode(',', array_map(function ($key) {
    return $key;
}, $keys['dristric'][0]));
// return "'" . pg_escape_string($data[$key]) . "'";
// Create a table if it doesn't exist
$createTableQuery = "CREATE TABLE IF NOT EXISTS your_table_name ($tableColumns)";
echo $createTableQuery;
// $result = pg_query($conn, $createTableQuery);

// if (!$result) {
//     die("Error in creating table: " . pg_last_error());
// }

// Insert data into the table with specific column names
$insertQuery = "INSERT INTO your_table_name ($columnNames) VALUES ($values)";
echo $insertQuery;
// $result = pg_query($conn, $insertQuery);

// if (!$result) {
//     die("Error in inserting data: " . pg_last_error());
// }

// // Close PostgreSQL connection
// pg_close($conn);

echo "Table and data inserted into PostgreSQL successfully!";









// Connect to the PostgreSQL database
// $conn = pg_connect("dbname=$dbname user=$user password=$password host=$host port=$port");
/////////////////////////////////////////////////////////////
// $conn = pg_connect("dbname=$dbname_pg user=$user_pg password=$password_pg host=$host_pg port=$port_pg");

// if (!$conn) {
//     die("Error in connection: " . pg_last_error());
// }

// // Customize this query based on your table structure
// $create_table_query = "
//     CREATE TABLE IF NOT EXISTS your_table_name (
//         id SERIAL PRIMARY KEY,
//         data JSONB
//     );
// ";

// // Execute the query to create the table
// $result = pg_query($conn, $create_table_query);

// if (!$result) {
//     die("Error in creating table: " . pg_last_error());
// }

// // Iterate over the data and insert it into the table
// foreach ($data as $item) {
//     // Escape and sanitize the data as needed
//     $escaped_data = pg_escape_string(json_encode($item));

//     // Customize this query based on your table structure
//     $insert_query = "INSERT INTO your_table_name (data) VALUES ('$escaped_data');";

//     // Execute the query to insert data
// //$result = pg_query($conn, $insert_query);
//     echo $insert_query;
//     if (!$result) {
//         die("Error in inserting data: " . pg_last_error());
//     }
// }

// // Close the database connection
// pg_close($conn);

// echo "Data imported successfully!";
?>
