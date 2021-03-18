<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Listar</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	</head>
	<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
				<a class="navbar-brand" href="#">Gerenciar Livros</a>
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active">
						<a class="nav-link" href="#">Listar</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#" onclick="window.location.href='openAddBookForm'">Novo</a>
					</li>
				</ul>
			</div>
		</nav>
		<h2>Listar</h2>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Titulo</th>
					<th scope="col">Autor</th>
					<th scope="col">Cpf</th>
					<th scope="col">Tipo</th>
					<th scope="col">Ações</th>

				</tr>
				</thead>
				<tbody>
				<c:forEach items="${books}" var = "book">
					<c:url var="editlink" value="getSingleBook">
						<c:param name="bookid" value="${book.id}" />
					</c:url>
					<c:url var="deletelink" value="deleteprocess">
						<c:param name="bookid" value="${book.id}" />
					</c:url>
					<tr>
						<td cope="row">${book.id}</td>
						<td>${book.title}</td>
						<td>${book.author}</td>
						<td>${book.cpf}</td>
						<td>${book.tipo}</td>
						<td>
							<a class="btn btn-primary btn-sm px-3" href="${editlink}">Edit</a> | <a class="btn btn-danger btn-sm px-3" href="${deletelink}"><i class="fas fa-times"></i>Delete</a>
						</td>
					</tr>
				</c:forEach>

				</tbody>
			</table>
				<button class="btn btn-success btn-sm px-3" onclick="window.location.href='openAddBookForm'">Add</button>
		</div>
	</div>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</html>