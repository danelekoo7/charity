
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Oddam w dobre ręce</title>

<%@ include file="parts/header.jsp" %>

    </header>

    <section class="login-page">
        <h2>Załóż konto</h2>
        <form:form action="/registration" method="post" modelAttribute="user">
            <div class="form-group">
                <form:input type="text" path="name" name="name" placeholder="Imię" />
                <form:errors path="name"/>
            </div>
            <div class="form-group">
                <form:input type="text" path="surname" name="surname" placeholder="Nazwisko" />
                <form:errors path="surname"/>
            </div>
            <div class="form-group">
                <form:input type="email" path="email" name="email" placeholder="Email" />
                <form:errors path="email"/>
            </div>
            <div class="form-group">
                <form:input type="text" path="username" name="username" placeholder="nazwa użytkownika" />
                <form:errors path="username"/>
            </div>
            <div class="form-group">
                <form:input type="password" path="password" name="password" placeholder="Hasło" />
                <form:errors path="password"/>
            </div>
            <div class="form-group">
                <form:input type="password" path="password2" name="password2" placeholder="Powtórz hasło" />
                <form:errors path="password2"/>
            </div>

            <div class="form-group form-group--buttons">
                <a href="login.html" class="btn btn--without-border">Zaloguj się</a>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button class="btn" type="submit">Załóż konto</button>
            </div>
        </form:form>
    </section>



<%@ include file="parts/footer.jsp" %>