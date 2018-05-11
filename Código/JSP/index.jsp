<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <title>Mundo Cartas - Rocío Matabuena Berdugo</title>
  </head>

  <body>

    <div class="container">
      <br><br>			
      <div class="panel panel-primary">
        <div class="panel-heading text-center"><h2>¡Bienvenido a Mundo Cartas!</h2></div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
        %>
        <!--
                <table class="table table-striped">
                  <tr>
                    <th>
                      <a href="altaUsu.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-home"></span>
                        ¡Regístrate!
                      </a>
                    </th>
                    <th>
                      <a href="inicioSesionUsuario.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-home"></span>
                        Entrar como usuario
                      </a>
                    </th>
                    <th>
                      <a href="menuAdmin.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-home"></span>
                        Entrar como administrador
                      </a>
                    </th>
        <!--
        <th>
          <a href="menuNEWS.jsp" class="btn btn-primary">
            <span class="glyphicon glyphicon-home"></span>
            Novedades
          </a>              
        </th>
        -->
        </tr>
        <%
          // conexion.close();
        %>

        <div class="container center">
          <div class="row center"></div>
          <div class="row">
            <div class="row col m3 center"></div>
            <div class="col m6 card-panel grey lighten-5 center">
              <h5 class="center">Iniciar sesión</h5>
              <form method="post" action="accesoUsu.jsp">
                <div class="input-field center">
                  <label for="usuario">Usuario: </label>
                  <input type="text" name="usuario" id="usuario" required>
                </div>
                <div class="input-field center">
                  <label for="clave">Contraseña: </label>
                  <input type="password" name="clave" id="clave" required>
                </div>
                <p class="center"><button class="btn waves-effect waves-light center" type="submit" name="aceptar">
                    Aceptar
                  </button></p>
                <br>
              </form>
              <form method="post" action="altaUsu.jsp">
                <p class="center"><button class="btn waves-effect waves-light center" type="submit" name="aceptar">
                    ¿No tienes cuenta? ¡Regístrate!
                  </button></p>
              </form>
            </div>
          </div>
        </div>

        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!-- Materialize -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

        </table>
      </div>
      <div class="text-center">&copy; Rocío Matabuena Berdugo</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>