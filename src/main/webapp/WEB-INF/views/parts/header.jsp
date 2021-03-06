<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="<c:url value="../../resources/css/style.css"/>"/>
</head>
<body>

    <c:if test="${fn:contains(pageContext.request.requestURI, 'login') || fn:contains(pageContext.request.requestURI, 'register') }">
    <header>
        </c:if>
            <c:if test="${not fn:contains(pageContext.request.requestURI, 'login') && not fn:contains(pageContext.request.requestURI, 'register')}">
            <header class="header--main-page">
                </c:if>

    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="<c:url value="login" />" class="btn btn--small btn--without-border">Zaloguj</a></li>
            <li><a href="<c:url value="/registration" />" class="btn btn--small btn--highlighted">Załóż
                konto</a></li>
        </ul>

        <ul>
            <li><a href="<c:url value="/" />" class="btn btn--without-border active">Start</a></li>
            <li><a href="#" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="#" class="btn btn--without-border">O nas</a></li>
            <li><a href="#" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li><a href="<c:url value="/donation" />" class="btn btn--without-border">Przekaż dary</a></li>
            <li><a href="#" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>

