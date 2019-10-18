package com.vista;


import java.util.List;

import com.modelo.Persona;
import com.modelo.PersonaDao;

public class principal {

	public static void main(String[] args) 
	{
		List<Persona> objPersonas = new PersonaDao ().listar();
		
		for(int i=0;i<objPersonas.size();i++)
		{
			System.out.println("Nombre: " + objPersonas.get(i).getNombres());
			System.out.println("Apellido: " + objPersonas.get(i).getApellidos());
			System.out.println();
		}
		

	}

}
