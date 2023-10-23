<?php
// Get the database URL from the environment variables
//$dbUrl = getenv('postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a:5432/mysqlrender');

// Parse the URL to get the connection parameters
$dbParams = parse_url('postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a:5432/mysqlrender');

$host = $dbParams['host'];
$port = $dbParams['port'];
$db   = ltrim($dbParams['path'], '/');
$user = $dbParams['user'];
$pass = $dbParams['pass'];

// echo $host .$db .$user .$pass .$port ;

// $conn_string = "host={$host} port={$port} dbname={$db} user={$user} password={$pass}";
// $dbconn = pg_connect($conn_string);

// if (!$dbconn) {
//     echo "Error: Could not establish a connection to the database.\n";
//     echo "Error Message: " . pg_last_error() . "\n";
// } else {
//     echo "Successfully connected to the database.\n";
// }
// Set up the PDO connection string
$dsn = "pgsql:host=$host;port=$port;dbname=$db;user=$user;password=$pass";

try {
     // Create a PDO instance
     $pdo = new PDO($dsn);
     $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     
     if($pdo) {

        $result = $pdo->query("DESCRIBE dristric");
while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
    print_r($row);
}

        $query = "SELECT dr_name, dr_name_en, pr_id FROM dristric";
$stmt = $pdo->prepare($query);
$stmt->execute();

echo "<table border='1'>";
echo "<tr><th>DR Name</th><th>DR Name EN</th><th>PR ID</th></tr>";
  // set the resulting array to associative
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
    echo $v;
  }
} catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}
$pdo = null;
echo "</table>";
// while ($row = $stmt->fetch())
// {
//     echo "<tr>";
//     echo "<td>" . $row['dr_name'] . "</td>";
//     echo "<td>" . $row['dr_name_en'] . "</td>";
//     echo "<td>" . $row['pr_id'] . "</td>";
//     echo "</tr>";
// }
// // echo "</table>";

//      }
//      $pdo =null;
} catch (PDOException $e) {
     echo $e->getMessage();
}
?>

<!-- postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a/mysqlrender

postgres://mysqlrender_user:c2oauXpOC2xC1hnPFuhOdDDCJWM0LlmG@dpg-ckog86tih1lc73f8eafg-a.singapore-postgres.render.com/mysqlrender -->