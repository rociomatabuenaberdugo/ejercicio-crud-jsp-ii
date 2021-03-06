<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

  <link rel="stylesheet" type="text/css" href="css/estilo.css">

  <title>Inicio de sesi�n</title>
</head>

<body id="fondo-inicio-sesion">

  <div id="wrapper-login" class="cover-container d-flex h-100 p-3 mx-auto flex-column text-center">
    <main role="main" class="inner cover">

      <!-- Icono de la p�gina "Mundo Cartas" -->
      <div><img id="img-Mun-Car" src="Img/MunCar3.png"></div>

      <!-- Formulario de inicio de sesi�n o para registrarse -->
      <form action="validarUsu.jsp" method="get" accept-charset="utf-8" id="for-in-se" class="form-signin">

        <h4 class="h4 font-weight-normal" id="inises">Inicia sesi�n</h4>
        <input type="text" id="usuario" name="usuario" class="form-control form-group" placeholder="Nombre de usuario" required autofocus value="">
        <input type="password" name="contrase�a" value="" class="form-control form-group" placeholder="Contrase�a" required>

        <input id="boton" class="btn btn-md btn-basic btn-block" type="submit" value="Acceder">
        <a href="registroUsu1.jsp" id="registrar">�No tienes cuenta? Reg�strate.</a>

        <!-- Copyright "Mundo Cartas" -->
      </form>
      <p id="copyright" class="mt-5 mb-3 text-muted">� MundoCartas 2018 - Roc�o Matabuena Berdugo</p>
    </main>
  </div>
</body>
</html>