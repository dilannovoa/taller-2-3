<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="jdk.internal.icu.text.UCharacterIterator" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <!--METADA-->
  <!--charset para caracteres especiales-->
  <meta charset="utf-8">
  <meta name="author" content="nombre autor">
  <!--descripcion-->
  <meta name="description" content="esta debe ser la informacion que aparece en el parrafo que acompaña los resultados
     de una busqueda de internet.">
  <!--keywords-->
  <meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en lina">
  <!--minimum responsive viewport -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!--TITLE -->
  <title>Registro de Usuario .:. MY APP </title>
  <!-- FAVICON -->

  <link rel="stylesheet" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQanBfBHjTUBlKM8GHkxDVqJTFFrD2iyB6JdQ&usqp=CAU">
  <!-- css -->
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="signin.css">
  <!-- boostrap css / icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
        crossorigin="anonymous">

  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.1/font/bootstrap-icons.css">


</head>
<body class="=text-center">
<!-- login from -->
<main class="from-signin w-100 m-auto">
  <form action="" method="=post">
    <img class="mb-4" src="https://cdn-icons-png.flaticon.com/512/3456/3456426.png" width="50%">
    <h4 class="text-secondary">MY - APP</h4>
    <h1 class="h5 mb-3 fw-normal">ingreso</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput"
             placeholder="ingrese su nombre" required autofocus
             pattern="[A-Za-z0-9]{8,12}">
      <label for="floatingInput">nombre:</label>
    </div>
    <div class="form-floating">
      <input type="=" class="form-control" id="floatingInput"
             placeholdex|r="ingrese su apellido" required pattern="[A-Za-z0-9]{8, 12}">
      <label for="floatingInput">apellido</label>
    </div>

    <div class="form-floating">
      <input type="=password" class="form-control" id="floatingInput"
             placeholder="ingrese su contraseña" required pattern="[A-Za-z0-9]{8, 12}">
      <label for="floatingInput">correo</label>
    </div>

    <div class="form-floating">
      <input type="=password" class="form-control" id="floatingPassword"
             placeholder="ingrese su contraseña" required pattern="[A-Za-z0-9]{8, 12}">
      <label for="floatingPassword">contraseña</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
    <div id="register">
      <a href="index.jsp">ingresar</a>
    </div>
    <p class="mt-3 mb-3 text-muted">Todos los derechos reservados MY APP
      © <%=displayDate()%>
    </p>

  </form>
</main>
<!-- Boostrap script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%!
  public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
  }
%>

</body>
</html>
