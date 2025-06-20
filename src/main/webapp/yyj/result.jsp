<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 6. 20.
  Time: 오후 12:04
  To change this template use File | Settings | File Templates.
--%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
  String userId = request.getParameter("userId");
  if (userId != null && !userId.isEmpty()) {
    javax.servlet.http.Cookie cookie = new javax.servlet.http.Cookie("userId", userId);
    cookie.setPath("/");
    cookie.setMaxAge(60*60*24); // 1일
    response.addCookie(cookie);
  }
%>
<%
  pageContext.setAttribute("pageVar", request.getParameter("pageVar"));
  request.setAttribute("reqVar", request.getParameter("reqVar"));
  session.setAttribute("sessVar", request.getParameter("sessVar"));
  application.setAttribute("appVar", request.getParameter("appVar"));
%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>EL 내장 객체 활용 예시</title>
</head>
<body>
<h2>요청 파라미터(param, paramValues)</h2>
<p>이름: ${param.name}</p>
<p>취미(첫 번째): ${paramValues.hobby[0]}</p>
<p>취미(전체):
  <c:forEach var="h" items="${paramValues.hobby}">
    ${h}
  </c:forEach>
</p>

<h2>요청 헤더(header, headerValues)</h2>
<p>User-Agent: ${header["user-agent"]}</p>
<p>Accept 헤더(전체):
  <c:forEach var="a" items="${headerValues.accept}">
    ${a}
  </c:forEach>
</p>

<h2>쿠키(cookie)</h2>
<p>userId 쿠키 값: ${cookie.userId.value}</p>

<h2>각 스코프 속성(pageScope, requestScope, sessionScope, applicationScope)</h2>
<p>pageScope 속성: ${pageScope.pageVar}</p>
<p>requestScope 속성: ${requestScope.reqVar}</p>
<p>sessionScope 속성: ${sessionScope.sessVar}</p>
<p>applicationScope 속성: ${applicationScope.appVar}</p>
</body>
</html>

