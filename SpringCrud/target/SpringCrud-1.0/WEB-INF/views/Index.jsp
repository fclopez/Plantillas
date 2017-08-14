<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/css/bootstrap-theme.min.css' />" rel="stylesheet"></link>        
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>This is the homepage!</p>
        <div class="well">
            <a href="<c:url value='/create' />">Create new entity</a>
        </div>
        <div class=" container-fluid">
            <table class="table table-striped table-bordered table-condensed">
                <thead>
                <th>Id</th>
                <th>Nombre</th>
                <th>Detalle</th>
                <th>Cantidad</th>
                </thead>
                <tbody>
                    <c:forEach items="${listaElem}" var="item">
                        <tr>
                            <td>${item.idElemento2}</td>
                            <td>${item.nombreElemento}</td>
                            <td>${item.detalleElemento}</td>
                            <td>${item.cantidad}</td>
                            <td><a href="<c:url value='/edit/${item.idElemento2}' />" class="btn btn-success custom-width">Update</a>
                                <a href="<c:url value='/delete/${item.idElemento2}' />" class="btn btn-danger custom-width">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>  
    <tbody>
    </tbody>
</body>
</html>
