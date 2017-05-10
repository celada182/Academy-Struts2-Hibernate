package com.celada.dao;

import java.util.List;

import com.celada.model.Alumno;
import com.celada.model.Curso;

public interface CursoDAO {

	public List<Curso> getCursos();
	
	public List<Curso> getCursosAlumno(Alumno alumno);
	
	public void addCurso(Curso curso);
	
	public Curso getCursoById(int id);
	
	public void deleteCurso(Curso curso);
}
