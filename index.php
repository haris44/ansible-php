<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test PHP</title>
</head>
<body>
    <?php 
        try {
            $user = "ansible";
            $pass = "ansible";
            $dbh = new PDO('mysql:host=localhost:3306;dbname=ansible', $user, $pass);
            foreach($dbh->query('SELECT * from hosts') as $row) {
               var_dump($row);
            }
            $dbh = null;
        } catch (PDOException $e) {
            print "Erreur !: " . $e->getMessage() . "<br/>";
            die();
        }
    ?>
</body>
</html>