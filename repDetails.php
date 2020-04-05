<?php
// get the q parameter from URL
$id = trim($_GET["id"]);
//echo $id; exit;
$repDetailsText = "";
// Connection with Mysql
try {
    require_once('config.php');
    $results = $pdo->prepare(  // $results PDO object statement hoye jay so later you can use $results as object
      "SELECT * FROM record WHERE nid = ? or mobile=?"
    );
    $results->bindParam(1, $id, PDO::PARAM_INT);
    $results->bindParam(2, $id, PDO::PARAM_INT);
    $results->execute();
    $repDetails = $results->fetchAll(PDO::FETCH_ASSOC);
    $rows = $results->rowCount();
   // if empty($user) = TRUE, set $status = "anonymous"
    $service = ($rows==1) ? "service" : "services";
    //var_dump($repDetails); // Data Ok
    if(empty($repDetails)) {
        $repDetailsText .= "No Service Taken"; 
    } else {
    $repDetailsText .= $rows. ' ' . $service . ' Taken';
    $repDetailsText .= '<table style="width:90%"><tr><th>NID</th><th>Name</th><th>Union</th><th>Type</th><th>Date</th></tr>';
    foreach($repDetails as $repDetail) {
        //var_dump($repDetailsText);exit("Ok");
        $repDetailsText .= '<tr><td>' . $repDetail['nid'] . '</td>' 
                        . '<td>' . $repDetail['name'] . '</td>' 
                        . '<td>' . $repDetail['unionp'] . '</td>' 
                        . '<td>' . $repDetail['type'] . '</td>' 
                        . '<td>' . $repDetail['date'] . '</td>' 
                        . '</tr>';
        }
        $repDetailsText .= '</table>';
    }
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }
// Output "no suggestion" if no hint was found or output correct values
echo "$repDetailsText";
?>