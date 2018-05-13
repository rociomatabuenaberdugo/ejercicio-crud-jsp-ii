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

  <title>Mundo cartas</title>
</head>

<body id="fondo-inicio-sesion">

  <div id="wrapper-login" class="cover-container d-flex h-100 p-3 mx-auto flex-column text-center">
    <main role="main" class="inner cover">

      <!-- Icono de la página "Mundo Cartas" -->
      <div><img id="img-Mun-Car" src="Img/MunCar3.png"></div>
      <h4 class="h4 font-weight-normal" id="inisesmenu">Bienvenido administrador</h4>
      <!-- Formulario para modificar los datos del usuario -->
      <form action="modificarDatosAdmin.jsp" method="get" accept-charset="utf-8"  class="form-signin">
        <input id="boton" class="btn btn-md btn-basic btn-block" type="submit" value="Modifica tus datos">
      </form>
      
      <!-- Formulario para modificar los datos del usuario -->
      <form action="CRUDUsu.jsp" method="get" accept-charset="utf-8" class="for-in-se-cancel">
        <input id="boton-modif" class="btn btn-md btn-basic btn-block" type="submit" value="Administrar usuarios">
      </form>   
      
      <!-- Formulario para llevar a las últimas novedades -->
      <form action="CRUDColec.jsp" method="get" accept-charset="utf-8" class="for-in-se-cancel">
        <input id="boton-modif" class="btn btn-md btn-basic btn-block" type="submit" value="Administrar colecciones">
      </form>    
      
      <!-- Formulario para cerrar sesión -->
      <form action="index.jsp" method="get" accept-charset="utf-8" id="for-in-se-cancel" class="form-signin">
        <input id="for-in-se-cancel" class="btn btn-md btn-danger btn-block" type="submit" value="Cerrar sesión">
      </form>
      
      <!-- Copyright "Mundo Cartas" -->
      </form>
      <p id="copyright" class="mt-5 mb-3 text-muted">© MundoCartas 2018 - Rocío Matabuena Berdugo</p>
    </main>
  </div>
</body>
</html>