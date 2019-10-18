package com.repaso.ejemplo01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonaServiceImp implements PersonaService
{
	@Autowired
	private PersonaRepository repositorio;

	@Override
	public List<Persona> listar() {
		return repositorio.findAll();
	}

	@Override
	public Persona listarId(int id) {
		return repositorio.findOne(id);
	}

	@Override
	public Persona add(Persona p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Persona edit(Persona p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Persona delete(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
