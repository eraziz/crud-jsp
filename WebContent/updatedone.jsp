<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updated</title>
</head>
<body>

<sql:update dataSource="${ds}" var="ut" > update student1 set name=?,course=?,fee=? where id=?;

<sql:param value="${param.sname}"></sql:param>
<sql:param value="${param.course}"></sql:param>
<sql:param value="${param.fee}"></sql:param>
<sql:param value="${param.id}"></sql:param>
</sql:update >
<c:redirect url="index.jsp"></c:redirect>
</body>
</html>