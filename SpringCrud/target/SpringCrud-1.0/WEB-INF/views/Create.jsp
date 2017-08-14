<%-- 
    Document   : Create
    Created on : 13/08/2017, 09:31:00 PM
    Author     : flopez
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create</title>
        <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/css/bootstrap-theme.min.css' />" rel="stylesheet"></link> 
    </head>  
    <body>
        <div class="well">
            <h4>Create</h4>
        </div>
        <div class="container-fluid">
            <form:form method="POST" modelAttribute="modelo" class="form-horizontal">
                <form:input type="hidden" path="idElemento2" id="id"/>

                <div class="row col-sm-offset-1">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="nombreElemento">Nombre</label>
                        <div class="col-md-7">
                            <form:input path="nombreElemento" class="form-control input-sm" type="text" id="nombreElemento" />
                        </div>
                    </div>
                </div>

                <div class="row col-sm-offset-1">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="detalle">Detalle</label>
                        <div class="col-md-7">
                            <form:input type="text" path="detalleElemento" id="detalle" class="form-control input-sm"/>
                        </div>
                    </div>
                </div>

                <div class="row col-sm-offset-1">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="cantidad">Cantidad</label>
                        <div class="col-md-7">
                            <form:input type="text" path="cantidad" id="cantidad" class="form-control input-sm"/>
                        </div>
                    </div>
                </div>
                <div class="row col-sm-offset-1">
                    <div class="form-actions">
                        <input type="submit" value="Save" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/Index' />">Cancel</a>
                    </div>
                </div>

            </form:form>
        </div>
    </body>
</html>
