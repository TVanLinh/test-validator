<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  entities.User: linhtran
  Date: 29/06/2017
  Time: 09:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-10 col-sm-offset-1">
            ${pageContext.request.contextPath}
            <form:form method="post" action="${pageContext.request.contextPath}/form" modelAttribute="userForm" >
                <div class="form-group">
                    <label for="email">Username:</label>
                    <form:input path="userName" class="form-control" id="email"/>
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <form:input path="passWord" class="form-control" id="pwd"/>
                </div>
                <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form:form>
        </div>
    </div>
</div>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</body>
</html>
