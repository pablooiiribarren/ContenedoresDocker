
<?php
// Parámetros de conexión
$servername = "db";
$username = "root"; 
$password = "root_password";      
$dbname = "proyectos";

// Crear conexión
$conexion = new mysqli($servername, $username, $password, $dbname);

// Comprobar conexión
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
} else {
    echo "Conexión exitosa a la base de datos.";
}
?>