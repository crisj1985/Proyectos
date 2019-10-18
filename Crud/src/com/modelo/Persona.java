package com.modelo;

public class Persona {

	private int Id;
	private String Nombres;
	private String Apellidos;
	
	public Persona() 
	{}
	
	public Persona(int id, String nombres, String apellidos) {
		super();
		Id = id;
		Nombres = nombres;
		Apellidos = apellidos;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getNombres() {
		return Nombres;
	}
	public void setNombres(String nombres) {
		Nombres = nombres;
	}
	public String getApellidos() {
		return Apellidos;
	}
	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}
	
	
}
