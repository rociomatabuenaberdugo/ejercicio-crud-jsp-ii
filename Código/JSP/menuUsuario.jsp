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

    <title>Tu menú</title>
  </head>

  <body>
		<div class="container">
			<br><br>			
      <div class="panel panel-primary">
        <div class="panel-heading text-center">¡Bienvenido!</div>
        <%
      Class.forName("com.mysql.jdbc.Driver");
        %>

        <table class="table table-striped">
          <tr>
            <th>
              <a href="modificaSocio.jsp" class="btn btn-primary">
                <span class="glyphicon glyphicon-home"></span>
                Modifica tus datos
              </a>
            </th>
            <th>
              <a href="colecUsu.jsp" class="btn btn-primary">
                <span class="glyphicon glyphicon-home"></span>
                  Mira tu inventario de cartas
              </a>
            </th>
            <th>
              <a href="index.jsp" class="btn btn-primary">
                <span class="glyphicon glyphicon-home"></span>
                Cierra sesión
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

        </table>
      </div>
      <div class="text-center">&copy; Rocío Matabuena Berdugo</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js">
      
    </script>
  </body>
</html>