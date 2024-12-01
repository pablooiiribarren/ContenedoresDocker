
<?php
// Incluir el archivo de conexión
include 'db.php';

// Consulta para obtener los proyectos
$sql = "SELECT * FROM proyectos";
$result = $conn->query($sql);

// Verificar si el formulario ha sido enviado
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $titulo = $_POST['titulo'];
    $descripcion = $_POST['descripcion'];
    $imagen = $_POST['imagen'];
    $fecha = $_POST['fecha'];
    $categoria = $_POST['categoria'];
    $tecnologias = $_POST['tecnologias'];
    $link = $_POST['link'];

    // Insertar el nuevo proyecto en la base de datos
    $sql = "INSERT INTO proyectos (titulo, descripcion, imagen, fecha, categoria, tecnologias, link)
            VALUES ('$titulo', '$descripcion', '$imagen','$fecha', '$categoria', '$tecnologias','$link')";

    if ($conn->query($sql) === TRUE) {
        echo "Nuevo proyecto agregado correctamente.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Redirigir de vuelta a la página principal
    header("Location: index.php");
    exit();
}
?>