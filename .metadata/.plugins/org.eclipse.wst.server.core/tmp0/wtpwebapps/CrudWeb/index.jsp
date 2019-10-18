<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" %>
    <%@page import ="java.sql.DriverManager"%>
    <%@page import ="java.sql.PreparedStatement"%>
    <%@page import ="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="Agregar.jsp">Nuevo registro</a>
<hr>
<br>
<%
		Connection con;
		String url = "jdbc:mysql://localhost:3306/ejemplo";
		String user = "root";
		String password="padrotemovil";
		String driver ="com.mysql.jdbc.Driver";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);
		
		PreparedStatement ps;
		ResultSet rs;
		
		ps=con.prepareStatement("select * from personas");
		rs=ps.executeQuery();

/*while(rs.next())
{
	
}*/

%>

<div>
	<table>
		<tr>
			<th>Index</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Acciones</th>
		</tr>
		<%while(rs.next())
		{
 %>
		<tr>
			<td><%= rs.getInt("id") %></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("apellidos") %></td>
			<td>
				<a href="Editar.jsp?id=<%= rs.getInt("id") %>">Editar</a>
				<a href="Delete.jsp?id=<%= rs.getInt("id") %>">Eliminar</a>
			</td>
		</tr>
		<%} %>
	</table>
</div>

</body>
</html>