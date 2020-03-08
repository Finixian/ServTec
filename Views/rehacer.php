<?php

require_once "acceso_mysqli.php"; 
if(isset($_GET['var'])){
$var = htmlspecialchars ($_GET['var']);
$query1 = "UPDATE aspirante SET presento = '0' WHERE idAspirante = '$var'";
$mysqli->query($query1);
$query2 = "DELETE FROM resultado WHERE idAspirante = '$var'";
$mysqli->query($query2);
header("location: examen.php");
}

// echo "<script>location.href=location</script>
//header("location: panel-aspirante.php");
//if (mysqli_query($connection, $query)) {
   // echo "Record deleted";
//} else {
  //  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
//}


?>