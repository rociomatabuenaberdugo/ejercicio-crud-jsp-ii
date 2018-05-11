<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Materialize -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  </head>
  
  <body>
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3309/mundo_cartas", "root", "");
    Statement s = conexion.createStatement();

    request.setCharacterEncoding("UTF-8");

      String consulta = "SELECT COUNT(*) FROM usuario WHERE NomUsu='"
              + request.getParameter("usuario")
              + "' AND ConUsu='"
              + request.getParameter("clave")
              + "'";

    ResultSet coincidencias = s.executeQuery(consulta);
    coincidencias.next();
    
    String usu = "";
    String men = "";
    String enlace;
    
    if (coincidencias.getInt(1) == 0) {
      enlace = "index.jsp";
      men ="Lo sentimos, no hay ningún usuario con esos datos....";
    } else if (request.getParameter("usuario").equals("admin")) {
      men ="Bienvenido, administrador.";
      enlace = "menuAdmin.jsp";
    } else {
      usu = (request.getParameter("usuario"));
      men ="Bienvenido, " + usu;
      enlace = "menuUsuario.jsp";
    };
    %>
    <div class="container">
      <div class="row center"></div>
      <div class="row center">
        <div class="row col m3 center"></div>
        <div class="col m6 card-panel grey lighten-5 center">
          <h5 class="center"><%=men %></h5>       
          <p class="center">
            <a href="<%=enlace %>" class="btn waves-effect waves-light center">
              Continuar
              <i class="material-icons">check_circle</i>
            </a>
          </p>
          <br>
        </div>
      </div>
      <div class="center">&copy; Rocío Matabuena Berdugo</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>
