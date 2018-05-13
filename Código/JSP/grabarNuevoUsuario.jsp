<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <title>Inicio de sesión</title>
  </head>
  <body id="fondo-inicio-sesion">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3309/mundo_cartas", "root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      String men = "";
      String en = "";

      // Comprueba la existencia del email introducido en el formulario de registro
      String consultaEmail = "SELECT * FROM usuario WHERE CorEleUsu = '"
              + request.getParameter("correo") + "'";

      ResultSet numeroDeUsu = s.executeQuery(consultaEmail);
      numeroDeUsu.last();

      if (numeroDeUsu.getRow() != 0) {
        men = "Error al registrarse. El correo '" + request.getParameter("correo")
                + "' ya está siendo utilizado.";
        en = "registroUsu1.jsp";
      } else {
        String insercion = "INSERT INTO usuario (NomUsu, CorEleUsu, ConUsu, tipUsu) VALUES ('"
                + request.getParameter("usuario")
                + "', '" + request.getParameter("correo")
                + "', '" + request.getParameter("contraseña")
                + "', 1)";
        s.execute(insercion);
        men = "Usuario '" + request.getParameter("usuario") + "' creado correctamente.";
        en = "menuUsu.jsp";
      }
      conexion.close();
    %>
    <div id="wrapper-login" class="cover-container d-flex h-100 p-3 mx-auto flex-column text-center">
      <main role="main" class="inner cover">

        <!-- Icono de la página "Mundo Cartas" -->
        <div><img id="img-Mun-Car" src="Img/MunCar3.png"></div>


        <form accept-charset="utf-8" id="for-in-se" class="form-signin">

          <!--
          Mensaje que varía según los datos introducidos. El botónuede llevarnos de nuevo al
          login si hemos introducido mal los datos; al menú de administrador si hemos entrado como
          administrador o al menú de un usuario si hemos introducido los datos de ese usuario bien.
          -->
          <h5 class="h5 font-weight-normal" id="menInSes"><%=men%></h5>       
          <p class="center">
            <a href="<%=en%>" class="btn waves-effect waves-light center" id="boton">
              Continuar
            </a>
          </p>

          <!-- Copyright "Mundo Cartas" -->
        </form>
        <p id="copyright" class="mt-5 mb-3 text-muted">© MundoCartas 2018 - Rocío Matabuena Berdugo</p>
      </main>
    </div>
  </body>
</html>
