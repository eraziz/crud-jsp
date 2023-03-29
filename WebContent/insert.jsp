<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
<sql:update dataSource="${ds}" var="ut" > insert into student1(name,course,fee) values(?,?,?);
<sql:param value="${param.sname}"/>
<sql:param value="${param.course}"/>
<sql:param value="${param.fee}"/>
</sql:update >
<c:redirect url="index.jsp"/>
<c:out value="${param.sname}"/>
</body>
</html>