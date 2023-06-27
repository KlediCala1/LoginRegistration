<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27.6.2023
  Time: 2:16 e pasdites
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="p-4 bg-light">
<h1>Welcome!</h1>
<h3>Join our growing Community</h3>
<div class="d-flex justify-content-around w-100">
    <div class="container rounded" style="margin-right: 5%">
        <form:form action="/register" method="post" modelAttribute="newUser">

            <div class="row d-flex justify-content-center">
                <h2>Register: </h2>
            </div>

            <div class="row border border-primary p-1">
                <div class="col border-end border-primary">
                    <form:label path="userName">Username: </form:label>
                    <form:errors cssClass="text-danger" path="userName"></form:errors>
                </div>
                <div class="col">
                    <form:input cssClass="w-100" path="userName"></form:input>
                </div>
            </div>

            <div class="row border border-primary p-1">
                <div class="col border-end border-primary">
                    <form:label path="email">Email: </form:label>
                    <form:errors cssClass="text-danger" path="email"></form:errors>
                </div>
                <div class="col">
                    <form:input cssClass="w-100" path="email"></form:input>
                </div>
            </div>

            <div class="row border border-primary p-1">
                <div class="col border-end border-primary">
                    <form:label path="password">Password: </form:label>
                    <form:errors cssClass="text-danger" path="password"></form:errors>
                </div>
                <div class="col">
                    <form:input cssClass="w-100" type="password" path="password"></form:input>
                </div>
            </div>

            <div class="row border border-primary p-1">
                <div class="col border-end border-primary">
                    <form:label path="confirm">Confirm Password: </form:label>
                    <form:errors cssClass="text-danger" path="confirm"></form:errors>
                </div>
                <div class="col">
                    <form:input cssClass="w-100" type="password" path="confirm"></form:input>
                </div>
            </div>

            <div class="d-flex justify-content-center row border border-primary p-1">
                <input class="w-50 btn btn-primary" type="submit" value="Sumbit">
            </div>
        </form:form>

    </div>
    <div class="container rounded" style="margin-left: 5%">
        <form:form action="/login" method="post" modelAttribute="newLogin">

            <div class="row d-flex justify-content-center">
                <h2>Login: </h2>
            </div>


            <div class="row border border-primary p-1">
                <div class="col border-end border-primary">
                    <form:label path="email">Email: </form:label>
                    <form:errors cssClass="text-danger" path="email"></form:errors>
                </div>
                <div class="col">
                    <form:input cssClass="w-100" path="email"></form:input>
                </div>
            </div>

            <div class="row border border-primary p-1">
                <div class="col border-end border-primary">
                    <form:label path="password">Password: </form:label>
                    <form:errors cssClass="text-danger" path="password"></form:errors>
                </div>
                <div class="col">
                    <form:input cssClass="w-100" type="password" path="password"></form:input>
                </div>
            </div>

            <div class="d-flex justify-content-center row border border-primary p-1">
                <input class="w-50 btn btn-primary" type="submit" value="Sumbit">
            </div>

        </form:form>
    </div>
</div>
</body>
</html>