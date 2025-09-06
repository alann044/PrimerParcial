<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Invitado</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&family=SUSE:wght@100..800&display=swap" rel="stylesheet">
</head>
<body>
    <section class="contenido">
        <div class="mitades">
            <div class="mitad1">
                <img src="img/invitado.png" alt="Invitado" class="imagen-lateral">
            </div>
            <div class="mitad2">
                <h2>Registro de Invitado</h2>

                <div class="formulario">
                    <form action="invitado_registrar.php" method="POST">
                        <label for="nombre">Nombre:</label><br>
                        <input type="text" name="nombre" required><br><br>

                        <label for="correo">Correo:</label><br>
                        <input type="email" name="correo" required><br><br>

                        <label for="contraseña">Contraseña:</label><br>
                        <input type="password" name="contraseña" required><br><br>

                        <label for="ocupacion">Tipo de invitación:</label><br>
                        <select name="ocupacion" required>
                            <option value="">-- Selecciona una opción --</option>
                            <option value="Escritor">Escritor</option>
                            <option value="Colaborador">Colaborador de librería</option>
                            <option value="Invitado">Invitado general</option>
                        </select><br><br>

                        <label for="evento">Evento al que asiste:</label><br>
                        <input type="text" name="evento" required><br><br>

                        <button type="submit">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>