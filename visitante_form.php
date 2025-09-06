<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Visitante</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&family=SUSE:wght@100..800&display=swap" rel="stylesheet">
</head>
<body>
    <section class="contenido">
        <div class="mitades">
            <div class="mitad1">
                <img src="img/visitante.jpg" alt="Visitante" class="imagen-lateral">
            </div>
            <div class="mitad2">
                <h2>Registro de Visitante</h2>

                <div class="formulario">    
                    <form action="visitante_registrar.php" method="POST">
                        <label for="nombre">Nombre:</label><br>
                        <input type="text" name="nombre" required><br><br>

                        <label for="correo">Correo:</label><br>
                        <input type="email" name="correo" required><br><br>

                        <label for="contraseña">Contraseña:</label><br>
                        <input type="password" name="contraseña" required><br><br>

                        <label for="ocupacion">Ocupacion:</label><br>
                        <select name="ocupacion" required>
                            <option value="">-- Selecciona una ocupación --</option>
                            <option value="Corrector">Corrector de estilo</option>
                            <option value="Ilustrador">Ilustrador</option>
                            <option value="Escritor">Escritor</option>
                            <option value="Reportero">Reportero</option>
                            <option value="Impresor">Impresor</option>
                            <option value="Otro">Otro</option>
                        </select><br><br>

                        <label for="motivo_visita">Motivo de la visita:</label><br>
                        <input type="text" name="motivo_visita" required><br><br>

                        <label for="persona_visitar">Persona a la que visita:</label><br>
                        <input type="text" name="persona_visitar" required><br><br>

                        <button type="submit">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
