<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="controlador"  method="post">
	<input type="submit" name="accion" value="Listar">
	<input type="submit" name="accion" value="Nuevo">
</form>

<div>
	<table>
		<tr>
			<th>Index</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Acciones</th>
		</tr>
		<c:forEach var="datpersona" items="${datos}" >
		
		<tr>
			<td>${datpersona.getId()}</td>
			<td>${datpersona.getNombre()}</td>
			<td>${datpersona.getApellidos()}</td>
			<td>
			<form method="post" action="controlador">
				<input type="hidden" name="id" value="${datpersona.getId()}">
				<input type="submit" name="accion" value="Editar">
				<input type="submit" name="accion" value="Delete">
			</form>
			</td>
		</tr>
		</c:forEach>
		
	</table>
</div>

</body>
</html>