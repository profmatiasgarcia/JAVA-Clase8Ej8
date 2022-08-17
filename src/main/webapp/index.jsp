<%--
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />
    <title>Login</title>
</head>
<body>
    <div class="container-sm bg-secondary" style="width: 400px">
        <center><img src="images/user.png" alt=""/></center>
        <div class="d-flex align-items-center justify-content-center" style="height: 350px">
            <form action="muestraProductos" method="GET">
                <!-- Email input -->
                <div class="form-outline mb-4">
                  <input type="email" id="email" class="form-control" />
                  <label class="form-label" for="email">Email</label>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                  <input type="password" id="pass" class="form-control" />
                  <label class="form-label" for="pass">Password</label>
                </div>

                <div class="form-check">
                  <input class="form-check-input" type="checkbox" value="" id="record" checked />
                  <label class="form-check-label" for="record"> Recordarme </label>
                </div>
                <!-- Simple link -->
                <a href="#!">Olvido su password?</a>
                <br>
                <br>
                <!-- Submit button -->
                <center><button type="submit" class="btn btn-primary btn-block">Ingresar</button></center>
            </form>
        </div>
    </div>
</body>
</html>