<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div><h3>Actualizar</h3></div>

<div>
	<form action="controlador" method="post">
		
		Id:<input type="text" readonly = "" name="txtId" value="${persona.getId()}">
		Nombre:<input type="text" name="txtNombre" value= "${persona.getNombre()}">
		Apellido:<input type="text" name="txtApellido" value= "${persona.getApellidos()}">
		<input type="submit" name="accion" value="Actualizar">
		
	</form>
</div>

</body>
</html>