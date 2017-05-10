package com.celada.dao;

import java.util.List;

import com.celada.model.Alumno;

public interface AlumnoDAO {
	
	public List<Alumno> getAlumnos();
	
	public Alumno getAlumnoById(int id);
	
	public void addAlumno(Alumno alumno);
	
	public void deleteAlumno(Alumno alumno);
	
}
