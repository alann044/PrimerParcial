<?php
date_default_timezone_set('America/Ciudad_Juarez');
$conexion = new mysqli("localhost:3307", "root", "", "gandhi_asistencia");
$conexion->query("SET time_zone = '-06:00'");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$contraseña = $_POST['contraseña'];
$puesto = $_POST['puesto'];

$contraseña_hash = password_hash($contraseña, PASSWORD_DEFAULT);

$sql = "INSERT INTO empleados (nombre, correo, contraseña, puesto) VALUES (?, ?, ?, ?)";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("ssss", $nombre, $correo, $contraseña_hash, $puesto);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Asistencia</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="resultado">
        <div class="card">
            <?php
            if ($stmt->execute()) {
                echo "<div class='success'></div>";
                echo "<h2>Asistencia registrada</h2>";
                echo "<p><strong>ID asignado:</strong> " . $stmt->insert_id . "</p>";
                echo "<p><strong>Fecha y hora:</strong> " . date('Y-m-d H:i:s') . "</p>";
                echo "<a href='index.html'>Registrar otra asistencia</a>";
            } else {
                echo "<h2 class='error'> Error</h2>";
                echo "<p>" . $conexion->error . "</p>";
                echo "<a href='index.html'>Volver al inicio</a>";
            }
            ?>
        </div>
    </div>
</body>
</html>
