<?php
echo "hello world2";

?>

<?php
Get the database URL from the environment variables
$dbUrl = getenv('postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a/mysqlrender');
echo "hello world2";
// Parse the URL to get the connection parameters
$dbParams = parse_url($dbUrl);

$host = $dbParams['host'];
$db   = ltrim($dbParams['path'], '/');
$user = $dbParams['user'];
$pass = $dbParams['pass'];

// Set up the PDO connection string
$dsn = "pgsql:host=$host;dbname=$db;user=$user;password=$pass";
echo "hello world3";
try {
     // Create a PDO instance
     $pdo = new PDO($dsn);
     
     if($pdo) {
         echo "Connected to the <strong>$db</strong> database successfully!";
         
        //  // Perform a SQL query
        //  $sql_query = "SELECT * FROM my_table";
        //  $result = $pdo->query($sql_query);
         
        //  // Fetch all the data and print it
        //  $rows = $result->fetchAll();
        //  foreach ($rows as $row) {
        //      print_r($row);
        //  }
     }
} catch (PDOException $e) {
     echo $e->getMessage();
}
?>

<!-- postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a/mysqlrender

postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a.singapore-postgres.render.com/mysqlrender -->