package modelo;

import java.sql.*;

public class Conexion 
{
	Connection con;

	public Connection conectar() {
			
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "padrotemovil");
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return con;
	}
	
}
