<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>>
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
		
		ps=con.prepareStatement("delete from personas where id =" + idCliente );
		ps.executeUpdate();
		response.sendRedirect("index.jsp");
		%>
</body>
</html>