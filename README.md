# CRUD con JSP y BBDD ("Mundo cartas")

 
  Ejercicio que se basar� en la creaci�n de una aplicaci�n tipo CRUD (alta, listado, modificaci�n y borrado) sobre la informaci�n
  almacenada en una base de datos MySQL.



# Tem�tica de la Practica

 
  Para este ejercicio, la tem�tica sera la gesti�n de usuarios y las cartas coleccionables que tengan �stos.



# Dise�o de la Base de Datos


  En �ste ejercicio hay tres tablas principales:

  * <b>Familia cartas.</b> �sta tabla guarda las distintas tipos de colecciones a las cuales puede pertenecer las cartas de los
    usuarios.
  * <b>Cartas.</b> �sta tabla recopila las cartas introducidas por el usuario, es decir, las cartas que tiene el usuario.
  * <b>Familia cartas.</b> �sta tabla guarda las distintas tipos de colecciones a las cuales puede pertenecer las cartas de los
    usuarios.
  * <b>Cartas.</b> �sta tabla recopila las cartas introducidas por el usuario, es decir, las cartas que tiene el usuario.
  * <b>Usuario.</b> �sta tabla recopila las informaci�n b�sica de los distintos usuarios.
  * Despu�s, una cuarta tabla aparece (<b>cartasusuario</b>) debido a que la relaci�n de Cartas a Usuario es una de "muchos a muchos".


  <img src=./Im�genes/Relaciones.JPG>



# Dise�o de las p�ginas JSP


  Este ejercicio presenta <b>seis</b> p�ginas principales:

### Men� inicial (index)


  En �sta ventana se muestra las distintas opciones de la p�gina web:

  * <b>�Reg�strate!</b> �sta bot�n llevar� a una ventana de registro en la que se le solicitar� datos al usuario a cambio de poder
    acceder al bot�n "Men� de usuario".

    
  * <b>Iniciar sesi�n.</b> Tras rellenar �ste formulario, dependiendo de los datos, nos denegar� el acceso, nos meter� en el "Men� de
    usuarios" o en el "Men� de administradores".

  * <b>�Reg�strate!</b> �ste bot�n llevar� a una ventana de registro en la que se le solicitar� datos al usuario a cambio de poder
    acceder al men� "Men� de usuario".
    
  <img src=./Im�genes/Index.JPG>
  




### �Reg�strate!


  �sta p�gina se basa en un formulario, el cual una vez rellenado sus campos, introduce al usuario en la base de datos.

  
  <img src=./Im�genes/Registro.JPG>
  
  <img src=./Im�genes/Registro1.JPG>

  <img src=./Im�genes/Registro2.JPG>



### Iniciar sesi�n

  Al intentar iniciar sesi�n, tendremos tres posibilidades:

  <img src=./Im�genes/Login0.JPG>

  <img src=./Im�genes/Login1.JPG>

  <img src=./Im�genes/Login2.JPG>

### Men� del administrador


  Tras iniciar sesi�n de forma correcta con la cuenta <b>admin</b>, se accede al men� de administrador.
  
  <img src=./Im�genes/MenuAdmin.JPG>
  <img src=./Im�genes/CRUDCar.JPG>
  <img src=./Im�genes/CRUDUsu.JPG>


### Men� de los usuarios

  Tras iniciar sesi�n de forma correcta en cualquier cuenta que sea un usuario (no <b>admin</b>), se accede al men� de los usuarios.
  
  <img src=./Im�genes/MenuUsu.JPG>
  <img src=./Im�genes/ColecCar.JPG>
  
# Pr�ximos avances
  En las pr�ximas actualizaciones se implementar� un cambio de aspecto, m�s funciones (nuevos apartados), mejoras en apartados, etc.