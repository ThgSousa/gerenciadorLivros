<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionar</title>
</head>
<body>
	<h1>Novo Cadastro</h1>
	<form:form action = "bookprocess" modelAttribute="book">
		<form:hidden path="id"/>
		Book Title: <form:input path="title" /><br/>
		Book Author: <form:input path="author" /><br/>
		<select name="tipo">
			<option value="cpf">Cpf</option>
			<option value="cnpj">Cnpj</option>
		</select> do Author: <form:input path="cpf" /><br/>


		<button type = "submit">Add ${selectValue}</button>
	</form:form>
</body>
</html>