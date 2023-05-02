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
        <img class="mb-4" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEUAAAD///+1tbXDw8Py8vKrq6va2toMDAxQUFCkpKTQ0ND8/PyJiYmVlZXExMRvb28TExObm5vp6elhYWEeHh719fVWVlZnZ2d6enp0dHTi4uI0NDRHR0c5OTmPj49bW1sqKipBQUEbGxuCgoIuLi6QNgJxAAAE+ElEQVR4nO2da3eiMBCGUVAr1EtttWq1tev+/9+43bOXKpB3ImGS8Zz3+VqGzbNgEjK5ZAPMfrHMLLNc7AWDDP/5KbWBB08hhvPUpfdiHmCYuuyedDe8j0coPERoOExddE+GNKSheWhIQ/vQkIb2oSEN7UNDGtqHhjS0j77h22yUj84T6bKHad6J0S6x4bH0u3yE/inM+JTScPd9/eoTXIdHNQWqhIbPlwHFyXndIkRQKIquYXEV4R5hHYcZVi+pDOtJg43f/8TtPKcyrGd+nCH3avhWD9m7rgx9S38kMjw0b+ggsKbJUSk0DR+8DbM8RHANS2HEMKTFL9/uwjA7dOy1DV+FUpgxVIOGIYaNuhR3IJXQNPxZD3G2h5rY6NNoomo4q4Uc9H2aqBour/ubsOuhhu7X0+YyoEDfOHoof+NfNBgrbRUHqoYv57L6foT5Ql+nBU3Dp3UtZJXCUc/w0PZZW8afrqlmeG6PWqMRNxW0DHeusDX+1ukfJcPm5/1/isgvqpLhCgRGbvh1DPEXOxoZ6x8Vw5d6M3FN2Rq0OT92QfrE1zGs97jrtNSnH92HTGcJDKXhz2kj4v1mrwva3wlNw4lUpHE94nir1DWPsQ1BU/GHxmhG0HCpMGCqYSiOYDdyRaF5C2fKR8nwUSxRvaoJNUQVqobhVipQ9bMWgToIPhwjGzbG2OoU9QhhdZIEHMNTaS3gTb9oTp8Ie4iwM69iuMQFbumYHqVldIAKzzfR6Zcu0W3fW0OexuuqC6th/UcdxTDLTttZO9EHMjjri4b2oSEN7UNDGtqHhjS0Dw1paB8adjecxCGV4S50fNCfUphppWMYOEp/Izj5pGIYOPx5Mw+xDV/6Lb8MnG6lYRiUDOwEmsKiYRgw774jsTMzsX+G+IeoYfjZZ+F9iJ4hFTMzfQPH0XUyMwF5lg7g3pVSn2barwOi2EJBvX7p8SEOJ1wMflvQ8B6gIQ3tQ0Ma2oeGNLQPDWloHxrS0MGPaTmOQw4XW6gZbisU2TMrnHxSMQzcMuhmYBJRxRAvXesfeBBFkvUWfVOdIhvGz8zE3s0s4nDwXz4iGz6jMA0qVNWo1DRx0xaDwQgI6hiKCxD7Be8potPiH2I+xRztKajXL32djuIwlbahYM+bhvahIQ3tQ0Ma2oeGNLQPDWloHxrS0MXhfRqHs7SzrY7hW4kiewaOtCkZHuMmLhqbo+kbBh7IcTPwGHsNww0K0wDuZs+8hRtLuafYq4IcWwgrgjb7UqlpYmbxfwM3v1QxjJ0Eho2+TosfdQVigeoZtV7bcbgv4jCGjaGeoSFoSEP70JCG9qEhDe1DQxrah4Y0tA8NaWgfGtLQPjSkoX1oSEP70LCj4WQ7nOdu5kN8gtE1O+Fe2/jrgLMPeRvhPToN7pKNvEpsFXumwuVp3AC/s+T9VvqB7T1VDP02gvY7ijz4XhqGr16F8jtT1nfFrXu+Scr5NM3jSJv4zj5yT9+jYRdD300jxKN8M/833r0NrUpN43foZp81TePMSGVDv+oBT4P5x4fXvUClpdPiv8pTaAvf07mf5TdiHXvm3heTWV4i8vZjHtt5F+41S9BrswQNaWgfGtLQPjSkoX1oSEP70JCG9qEhDe1DQxrah4Y0tA8N3cBtwg0x72w4SF10T7AD/Ot9PET4CAVDvGmKEYRzbQXDwX6xTG0AWS6k2Ua/AP4eflb1jdNPAAAAAElFTkSuQmCC"  alt="MY APP" width=100>
        <h4 class="text-secondary">MY - APP</h4>
        <h1 class="h5 mb-3 fw-normal">ingreso</h1>

        <div class="form-floating">
          <input type="text" class="form-control" id="floatingInput"
                 placeholder="ingrese su nombre de usuario" required autofocus
                 pattern="[A-Za-z0-9]{8,12}">
            <label for="floatingInput">usuario:</label>
        </div>
        <div class="form-floating">
            <input type="=password" class="form-control" id="floatingPassword"
            placeholder="ingrese su contraseña" required pattern="[A-Za-z0-9]{8, 12}">
            <label for="floatingPassword">contraseña</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
        <div id="register">
            <a href="register.jsp">Registrarse</a>
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

