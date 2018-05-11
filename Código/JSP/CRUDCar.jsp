<%-- 
    Document   : CRUDUsu
    Created on : 22-mar-2018, 1:45:42
    Author     : Roframa Matber
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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

    <title>CRUD Usuarios "Mundo Cartas"</title>
  </head>
  <body>
    <div class="container">
      <br><br>			
      <div class="panel panel-primary">
        <div class="panel-heading text-center"><h2>Cartas de "Mundo Cartas"</h2></div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3309/mundo_cartas", "root", "");
          Statement n = conexion.createStatement();
          ResultSet listaCarta = n.executeQuery("SELECT * FROM cartas");
          Statement aux = conexion.createStatement();
          ResultSet resultAtributos = aux.executeQuery("DESCRIBE cartas");
          ArrayList<String> listaAtributos = new ArrayList<String>(); //LISTA
          int q = 0;
          while (resultAtributos.next()) {
            listaAtributos.add(resultAtributos.getString("Field"));
            System.out.println("[DEBUGG] Añadido:" + listaAtributos.get(q));
            q++;
          }
          System.out.println("[DEBUGG] Tamaño listaAtributos.size()= " + listaAtributos.size());
          ArrayList<HashMap> filas = new ArrayList<HashMap>();
          HashMap<Integer, String> columnas = new HashMap<Integer, String>();
          while (listaCarta.next()) {
            for (int i = 0; i < listaAtributos.size(); i++) {
              columnas.put(i, "<td class='text-center'>" + listaCarta.getString(listaAtributos.get(i)) + "</td>");
              System.out.println("[DEBUGG] Añadida a hashmap columna-" + listaCarta.getString(listaAtributos.get(i)));
            }

            System.out.println(columnas);
            filas.add(columnas);

            System.out.println("[DEBUGG] HASHMAP COLUMNA AÑADIDA AL ARRAYLIST DE FILAS");
            columnas = new HashMap();
            System.out.println("[DEBUGG] CREADO DE NUEVO HASHMAP COLUMNA");
          }

        %>

        <table class="table table-striped">
          <tr><th class="text-center">Código carta</th><th class="text-center">Nombre</th><th class="text-center">Colección a la que pertenece</th></tr>
          <form method="get" action="grabaCarModificada.jsp">
            <tr>
              <td class="text-center"><input type="text" name="codCar" size="5" style="border-radius:15px;"></td>
              <td class="text-center"><input type="text" name="nomCar" size="20" style="border-radius:15px;"></td>
              <td class="text-center"><input type="text" name="perteneceA" size="10" style="border-radius:15px;"></td>
              <td><button type="submit" value="Añadir" class="btn btn-success"><span class="glyphicon glyphicon-floppy-save"></span> Añadir una carta</button></td><td></td></tr>           
          </form>
          <%                      int contador = 0;
            out.println("<tr>");
            System.out.println("Tamaño del arraylist filas:" + filas.size());

            listaCarta = n.executeQuery("SELECT * FROM cartas");
            while (contador < filas.size() && listaCarta.next()) {

              columnas = filas.get(contador);
              out.println(columnas.get(0));
              out.println(columnas.get(1));
              out.println(columnas.get(2));

          %>
          <td>
            <form method="get" action="modificaCarta.jsp">
              <input type="hidden" name="idPelicula" value="<%=listaCarta.getString("codCar")%>">
              <input type="hidden" name="nombre" value="<%=listaCarta.getString("nomCar")%>">
              <input type="hidden" name="genero" value="<%=listaCarta.getString("perteneceA")%>">
              <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-edit"></span> Modificar</button>
            </form>
          </td>
          <td>
            <form method="get" action="borraCar.jsp">
              <input type="hidden" name="idPelicula" value="<%=listaCarta.getString("codCar")%>"/>
              <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-erase"></span> Eliminar</button>
            </form>
          </td></tr>
          <%
              contador++;
              out.print("</tr>");

            } // while(contador < filas.size()
            resultAtributos.close();

            conexion.close();
          %>

        </table>
      </div>