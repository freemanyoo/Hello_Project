<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 25. 6. 20.
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<head>
    <meta charset="UTF-8">
    <title>EL 내장 객체 입력 폼</title>
</head>
<body>
<h2>EL 내장 객체 입력 폼</h2>
<form action="result.jsp" method="post" accept-charset="UTF-8">
    <fieldset>
        <legend>요청 파라미터</legend>
        이름: <input type="text" name="name"><br>
        취미(여러 개 선택):<br>
        <input type="checkbox" name="hobby" value="독서">독서
        <input type="checkbox" name="hobby" value="운동">운동
        <input type="checkbox" name="hobby" value="음악감상">음악감상
        <input type="checkbox" name="hobby" value="여행">여행
        <br>
    </fieldset>
    <fieldset>
        <legend>쿠키(userId)</legend>
        userId: <input type="text" name="userId"><br>
        <small>(입력하면 쿠키로 저장됩니다)</small>
    </fieldset>
    <fieldset>
        <legend>스코프 속성 값</legend>
        pageScope.pageVar: <input type="text" name="pageVar"><br>
        requestScope.reqVar: <input type="text" name="reqVar"><br>
        sessionScope.sessVar: <input type="text" name="sessVar"><br>
        applicationScope.appVar: <input type="text" name="appVar"><br>
    </fieldset>
    <br>
    <button type="submit">제출</button>
</form>
</body>
</html>

