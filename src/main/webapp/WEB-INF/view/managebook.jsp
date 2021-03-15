<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar</title>
</head>
<body>
	<h1>Listar</h1>
	<table border = "1">
		<tr>
			<th>Id</th>
			<th>Titulo</th>
			<th>Autor</th>
			<th>Cpf</th>
			<th>Tipo</th>
			<th>A��es</th>
		</tr>
		<c:forEach items="${books}" var = "book">
			<c:url var="editlink" value="getSingleBook">
				<c:param name="bookid" value="${book.id}" />
			</c:url>
			<c:url var="deletelink" value="deleteprocess">
				<c:param name="bookid" value="${book.id}" />
			</c:url>
			<tr>
				<td>${book.id}</td>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.cpf}</td>
				<td>${book.tipo}</td>
				<td>
					<a href="${editlink}">Edit</a> | <a href="${deletelink}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<button onclick="window.location.href='openAddBookForm'">Add</button>
	</div>
</body>
</html>