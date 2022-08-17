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
<%@page import="Controllers.registraProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />
    <title>Registrar Nuevo Producto</title>
</head>
<body>
    <div class="container bg-secondary ">
        <h2>Registrar Nuevo Producto</h2>
    </div>
        <div class="d-flex align-items-center justify-content-center">
            <form action="registraProducto" method="POST">
                <div class="row mb-3">
                    <label for="clave" class="col-sm-4 col-form-label">Clave:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="clave">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="nombre" class="col-sm-4 col-form-label">Nombre:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="nombre">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="precio" class="col-sm-4 col-form-label">Precio:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="precio">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="cant" class="col-sm-4 col-form-label">Cantidad:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="cant">
                    </div>
                </div>
                <center>
                    <button type="reset" class="btn btn-primary btn-block">Borrar</button>
                    <button type="submit" class="btn btn-primary btn-block">Registrar</button>
                </center>
            </form>
        </div>
    <br>
    <form action="muestraProductos" method="POST">
        <center>
            <button type="submit" class="btn btn-primary btn-block">Ver Stock de Productos</button>
        </center>
    </form>
</body>
</html>