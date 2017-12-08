<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<%@ include file="header.jsp"%>
</head>
<body>
<a href="studentcontroller?actions=student_new">New student</a>
<c:if test="${!empty students } ">
	<table class="table table-striped">
		<thead class="thead-dark">
			<tr>
				<th scope="col">#</th>
				<th scope="col">student Id</th>
				<th scope="col">Student Name</th>
				<th scope="col">College Name</th>
				<th scope="col">Email</th>
				<th scope="col">class</th>
				<th scope="col">Roll</th>
				<th scope="col">Gender</th>
				<th scope="col">Subject</th>
				<th scope="col">Departments</th>
				<th scope="col">DoB</th>
				<th scope="col">Actions</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${students }" var="student" >
			<tr>
				<th scope="row">1</th>
				<td><c:out value="${student.id}"/></td>
				<td><c:out value="${student.studentName}"/></td>
				<td><c:out value="${student.collegeName}"/></td>
				<td><c:out value="${student.email }"/></td>
				<td><c:out value="${student.className }"/></td>
				<td><c:out value="${student.roll }"/></td>
				<td><c:out value="${student.gender }"/></td>
				<td><c:out value="${student.subject }"/></td>
				<td><c:out value="${student.depatrments }"/></td>
				<td><c:out value="${student.dob }"/></td>		
				<td>
				<a href="studentcontroller?actions=student_delete&studentId=${student.id}">Delete</a>
				</td>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</c:if>
</body>
</html>