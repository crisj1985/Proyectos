package com.repaso.ejemplo01;

import java.util.List;

import org.springframework.data.repository.Repository;

public interface PersonaRepository extends Repository<Persona, Integer>{
	List<Persona>findAll();
	Persona findOne(int id);
	Persona save(Persona p );
	void delete(Persona p);

}
