<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Empleado</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&family=SUSE:wght@100..800&display=swap" rel="stylesheet">
</head>
<body>
    <section class="contenido">
        <div class="mitades">
            <div class="mitad1">
                <img src="img/empleado.jpg" alt="Empleado" class="imagen-lateral">
            </div>
            <div class="mitad2">
                <h2>Registro de Empleado</h2>
        
                <div class="formulario">
                    <form action="empleado_registrar.php" method="POST" class="formulario">
                    <label for="nombre">Nombre:</label><br>
                    <input type="text" name="nombre" required><br><br>

                    <label for="correo">Correo:</label><br>
                    <input type="email" name="correo" required><br><br>

                    <label for="contraseña">Contraseña:</label><br>
                    <input type="password" name="contraseña" required><br><br>

                    <label for="puesto">Puesto:</label><br>
                    <select name="puesto" required>
                        <option value="">-- Selecciona un puesto --</option>
                        <option value="Gerente">Gerente</option>
                        <option value="Supervisor">Supervisor</option>
                        <option value="Empleado">Empleado</option>
                        <option value="Practicante">Practicante</option>
                    </select><br><br>


                    <button type="submit">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
