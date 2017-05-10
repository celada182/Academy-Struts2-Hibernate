package com.celada.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.celada.model.Alumno;
import com.celada.model.Curso;
import com.celada.util.HibernateUtil;

public class CursoDAOImpl implements CursoDAO {

	Session session = HibernateUtil.getSession();
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Curso> getCursos() {
		session.beginTransaction();
		List<Curso> cursos = session.createCriteria(Curso.class).addOrder(Order.asc("nombre")).list();
		session.getTransaction().commit();
		return cursos;
	}

	@Override
	public List<Curso> getCursosAlumno(Alumno alumno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addCurso(Curso curso) {
		session.beginTransaction();
		session.saveOrUpdate(curso);
		session.getTransaction().commit();
	}

	@Override
	public Curso getCursoById(int id) {
		session.beginTransaction();
		Curso curso = (Curso) session.get(Curso.class, id);
		session.getTransaction().commit();
		return curso;
	}

	@Override
	public void deleteCurso(Curso curso) {
		session.beginTransaction();
		session.delete(curso);
		session.getTransaction().commit();
	}

	public void closeSession(){
		session.close();
	}
}
