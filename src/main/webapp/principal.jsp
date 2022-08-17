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
<%@ page import="Models.Producto, java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />
    <title>Principal</title>
</head>
<body>
    <div class="container bg-secondary">
        <h2>Productos en stock </h2>
    </div>
    <%
        ArrayList<Producto> productos = null;
        productos = (ArrayList<Producto>)request.getAttribute("Productos");
    %>
    <div class="container-sm">
        <table class="table table-striped">
            <tr>
                <th>Clave</th>
                <th>Nombre</th>
                <th>Precio</th>
                <th>Cantidad</th>
           </tr>
           <%
                for (Producto producto: productos) {
           %>
            <tr valign="top">
                <td><%= producto.getClave() %></td>
                <td><%=producto.getNombre() %></td>
                <td><%=producto.getPrecio() %></td>
                <td><%=producto.getCantidad() %></td>
           </tr>
           <% } %>
        </table>
    </div>
    <div class="container-sm bg-secondary">
        <p> Numero de registros : <%= productos.size() %></p>
    </div>
    <% productos.clear();%>
    <br>
    <form action="registrarProducto.jsp" method="post">
        <center><button type="submit" class="btn btn-primary btn-block">Registrar Nuevo Producto</button></center>
    </form>
</body>
</html>