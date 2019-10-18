package com.modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion 
{
	Connection con;
	
	public Connection getConexion() 
	{
		try {
			
			String url ="jdbc:mysql://localhost:3306/ejemplo";
			String user ="root";
			String password ="padrotemovil";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) 
		{
			// TODO: handle exception
		}
		
		return con;
	}

}
