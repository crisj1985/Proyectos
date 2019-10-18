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
	
		int idCliente = Integer.parseInt(request.getParameter("id")) ;
		
		ps=con.prepareStatement("select * from personas where id =" + idCliente );
		rs = ps.executeQuery();

		
		while(rs.next())
		{
		%>
			<form action="" method="post">
			Index:<input type="Text" readonly="readonly" name="txtId" value="<%=rs.getInt("id") %>">
			Nombre:<input type="Text" name="txtName" value="<%=rs.getString("name") %>">
			Apellido:<input type="Text" name="txtApellido" value="<%=rs.getString("apellidos") %>">
			<input type="submit" value="Guardar">
			<a href="index.jsp">Regresar</a>
				 
				
			</form>
		<% } %>	
		<%
		
		if(request.getParameter("txtName") != null && request.getParameter("txtName") != null)
		{
			ps = con.prepareStatement("update personas set name= '" + request.getParameter("txtName") + "', apellidos = '" + request.getParameter("txtApellido") + "' where id ="+idCliente  )  ;
			ps.executeUpdate();
			response.sendRedirect("index.jsp");
		}
			
		
		%>
		
		

		
		
		
		

</body>
</html>