<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div><h3>Agregar Nuevo</h3></div>

<div>
	<form action="controlador" method="post">
		
		Nombre:<input type="text" name="txtNombre">
		Apellido:<input type="text" name="txtApellido">
		<input type="submit" name="accion" value="Guardar">
		
	</form>
</div>

</body>
</html>