<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <title>Modificación de un usuario</title>
  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      <div class="panel panel-info">
        <div class="panel-heading text-center">Modifique el siguiente formulario con la nueva información</div>
          <form id="formularioModificacion" method="get" action="grabaCarModificada.jsp">
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Código de la carta:&nbsp;</label><input type="text" size="5" name="codCar" value="<%= Integer.valueOf(request.getParameter("codCar")) %>" readonly>
            </div>
            <div class="form-group">
            <label>&nbsp;&nbsp;Nombre de la carta:&nbsp;</label><input type="text" size="15" name="nombre" value="<%= request.getParameter("nomCar") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Número de la colección a la que pertenece: &nbsp;</label><input type="text" size="1000" name="pertenece" value="<%= Integer.valueOf(request.getParameter("perteneceA")) %>">
            </div>
            <hr>
            &nbsp;&nbsp;<a href="menuAdmin.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Volver al menú</a>
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
          </form>

      </div>
      <div class="text-center">&copy; Rocío Matabuena Berdugo</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
