<?php

$servername = "localhost";
$username = "lcars";
$password = "NCC1701D";
$dbname = "ingenieria";

$conn = new mysqli($servername, $username, $password, $dbname);

// Error de conexión
if ($conn->connect_error) {
  die("Error de conexion: " . $conn->connect_error);
} 

$sql = "select alumnos.legajo 'legajo', 
               alumnos.apellido 'apellido', 
               modulos.nom_modulo 'materia', 
               notas.nota 'nota'
        from   alumnos, 
               modulos, 
               notas 
        where  alumnos.legajo=notas.legajo 
           and modulos.cod_modulo = notas.cod_modulo;";

if ($result = $conn->query($sql)) {
  
while($row = $result->fetch_assoc()) {
    echo "legajo: " . $row["legajo"]. " - Apellido: " . $row["apellido"]. " " . $row["materia"]. " " . $row["nota"]."<br>";
  }
}

$conn->close();
?>
