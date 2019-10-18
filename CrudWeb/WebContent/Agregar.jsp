<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="" method="post">
		
		Nombre:<input type="text" name="txtNombre"/>
		Apellidos:<input type="text" name="txtApellidos"/>
		<input type="submit" name="btnGuardar" value="Guardar"/>
		<a href="index.jsp">Regresar</a>
	</form>

</body>
</html>

<%
		Connection con;
		String url = "jdbc:mysql://localhost:3306/ejemplo";
		String user = "root";
		String password="padrotemovil";
		String driver ="com.mysql.jdbc.Driver";
		String nombre, apellido;
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);
		
		
		
		PreparedStatement ps;
	
		nombre= request.getParameter("txtNombre");
		apellido= request.getParameter("txtApellidos");
		
		if(nombre!=null && apellido!=null)
		{
			ps=con.prepareStatement("insert into personas (name,apellidos) values ('"+nombre+"','"+apellido+"')");
			ps.executeUpdate();
			response.sendRedirect("index.jsp");
		}
		
		
		%>