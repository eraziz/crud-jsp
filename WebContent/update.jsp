<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</head>
<body>
	<h1>Student register system using jsp</h1>
	
	<br>
	<div class="row">
		<div class="col-sm-4">
			<form method="post" action="updatedone.jsp">
				<div align="left">
					<label class="form-label">id</label> <input type="text"
						class="form-control"  name="id" value="<%=request.getParameter("id") %>"
						id="id" readonly>
				
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
					<input type="submit" id="submit" value="update" class="btn btn-warning">
				</div>
			</form>
		</div>
