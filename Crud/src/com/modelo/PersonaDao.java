package com.modelo;

import java.sql.*;
import java.sql.ResultSet;
import java.util.*;



public class PersonaDao 
{
	conexion conectar = new conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet  rs;
	
	public List<Persona> listar()
	{
		List<Persona> objPersonas = new ArrayList<Persona>();
		String sql = "SELECT * FROM personas";
 		try 
		{
			
 			con = conectar.getConexion();	
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				Persona p = new Persona();
				p.setId(rs.getInt(1));
				p.setNombres(rs.getString(2));
				p.setApellidos(rs.getString(3));
				objPersonas.add(p);
			}
 			
		} catch (Exception e) {
			// TODO: handle exception
		}
 		return objPersonas;
	}

}
