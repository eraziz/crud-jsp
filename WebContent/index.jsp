<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	<style type="text/css">
	
	.Delete{
	user-select: none;
    white-space: pre;
    align-items: flex-start;
    text-align: center;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    color: buttontext;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
    text-decoration: none;
	
	}
	</style>
</head>
<body>
	<h1>Student register system using jsp</h1>
	
	<br>
	<div class="row">
		<div class="col-sm-4">
			<form method="post" action="insert.jsp">
				<div align="left">
					<label class="form-label"> student name</label> <input type="text"
						class="form-control" placeholder="Enter name" name="sname"
						id="sname" required>
				</div>
				<div align="left">
					<label class="form-label"> Course</label> <input type="text"
						class="form-control" placeholder="Course" name="course"
						id="course" required>
				</div>
				<div align="left">
					<label class="form-label"> fee</label> <input type="text"
						class="form-control" placeholder="Fee" name="fee" id="fee"
						required>
				</div>
				<br>
				<div align="center">
					<input type="submit" id="submit" value="submit"
						class="btn btn-info"> 
						<input type="reset" id="reset"
						value="reset" class="btn btn-warning">
				</div>
			</form>
		</div>
		
		<div class="col-sm-8">
			<div class="panel-body">
			<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/employee1" user="root" password="root" var="ds" scope="application"></sql:setDataSource>
			<sql:query var="rs" dataSource="${ds}">select * from student1;</sql:query>
				<form action="update.jsp">
				<table id="tbl-student"
					class="table table-responsive table-bordered" cellpading="0"
					width="100%">
					<hr>
					
					<tr>
					<th>select</th>
                        <th>id</th>
						<th>Student Name</th>
						<th>Course</th>
						<th>Fee</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
		<c:forEach items="${rs.rows}" var="row">		
					<tr>
					    <td><input type="radio" id="rid" value="${row.id}" name="id" required ></td>
					    <td><c:out value="${row.id}"></c:out></td>
						<td><c:out value="${row.name}"></c:out></td>
						<td><c:out value="${row.course }"></c:out></td>
						<td><c:out value="${row.fee}"></c:out></td>
						<td><input type="submit" value="update"></td>
						<td><a  class="Delete" href="delete.jsp?id=${row.id}" >Delete</a></td>
					</tr>
					</c:forEach>	
				</table>
			</div>
		</form>
		</div>
	</div>
</body>
</html>