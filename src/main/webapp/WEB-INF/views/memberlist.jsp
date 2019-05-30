<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
</head>
<body>
<table border = 1>
<tr>
<td>First Name</td>
<td>Last Name</td>
<td>Email</td>
<td>Description</td>
</tr>
<c:forEach items="${ member }" var = "item">
<tr>
<td>${ item.firstName }</td>
<td>${ item.lastName }</td>
<td>${ item.email }</td>
<td>${ item.description }</td>
</tr>
</c:forEach>
</table>
</body>
</html>