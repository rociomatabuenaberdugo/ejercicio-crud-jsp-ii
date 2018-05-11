# CRUD con JSP y BBDD ("Mundo cartas")

 
  Ejercicio que se basará en la creación de una aplicación tipo CRUD (alta, listado, modificación y borrado) sobre la información
  almacenada en una base de datos MySQL.



# Temática de la Practica

 
  Para este ejercicio, la temática sera la gestión de usuarios y las cartas coleccionables que tengan éstos.



# Diseño de la Base de Datos


  En éste ejercicio hay tres tablas principales:

  * <b>Familia cartas.</b> Ésta tabla guarda las distintas tipos de colecciones a las cuales puede pertenecer las cartas de los
    usuarios.
  * <b>Cartas.</b> Ésta tabla recopila las cartas introducidas por el usuario, es decir, las cartas que tiene el usuario.
  * <b>Familia cartas.</b> Ésta tabla guarda las distintas tipos de colecciones a las cuales puede pertenecer las cartas de los
    usuarios.
  * <b>Cartas.</b> Ésta tabla recopila las cartas introducidas por el usuario, es decir, las cartas que tiene el usuario.
  * <b>Usuario.</b> Ésta tabla recopila las información básica de los distintos usuarios.
  * Después, una cuarta tabla aparece (<b>cartasusuario</b>) debido a que la relación de Cartas a Usuario es una de "muchos a muchos".


  <img src=./Imágenes/Relaciones.JPG>



# Diseño de las páginas JSP


  Este ejercicio presenta <b>seis</b> páginas principales:

### Menú inicial (index)


  En ésta ventana se muestra las distintas opciones de la página web:

  * <b>¡Regístrate!</b> Ésta botón llevará a una ventana de registro en la que se le solicitará datos al usuario a cambio de poder
    acceder al botón "Menú de usuario".

    
  * <b>Iniciar sesión.</b> Tras rellenar éste formulario, dependiendo de los datos, nos denegará el acceso, nos meterá en el "Menú de
    usuarios" o en el "Menú de administradores".

  * <b>¡Regístrate!</b> Éste botón llevará a una ventana de registro en la que se le solicitará datos al usuario a cambio de poder
    acceder al menú "Menú de usuario".
    
  <img src=./Imágenes/Index.JPG>
  




### ¡Regístrate!


  Ésta página se basa en un formulario, el cual una vez rellenado sus campos, introduce al usuario en la base de datos.

  
  <img src=./Imágenes/Registro.JPG>
  
  <img src=./Imágenes/Registro1.JPG>

  <img src=./Imágenes/Registro2.JPG>



### Iniciar sesión

  Al intentar iniciar sesión, tendremos tres posibilidades:

  <img src=./Imágenes/Login0.JPG>

  <img src=./Imágenes/Login1.JPG>

  <img src=./Imágenes/Login2.JPG>

### Menú del administrador


  Tras iniciar sesión de forma correcta con la cuenta <b>admin</b>, se accede al menú de administrador.
  
  <img src=./Imágenes/MenuAdmin.JPG>
  <img src=./Imágenes/CRUDCar.JPG>
  <img src=./Imágenes/CRUDUsu.JPG>


### Menú de los usuarios

  Tras iniciar sesión de forma correcta en cualquier cuenta que sea un usuario (no <b>admin</b>), se accede al menú de los usuarios.
  
  <img src=./Imágenes/MenuUsu.JPG>
  <img src=./Imágenes/ColecCar.JPG>
  
# Próximos avances
  En las próximas actualizaciones se implementará un cambio de aspecto, más funciones (nuevos apartados), mejoras en apartados, etc.