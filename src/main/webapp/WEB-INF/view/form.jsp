<%--
  Created by IntelliJ IDEA.
  entities.User: linhtran
  Date: 31/03/18
  Time: 08:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
                        <form:errors path="passWord" element="div"/>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
