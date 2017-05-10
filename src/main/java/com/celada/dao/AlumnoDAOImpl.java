package com.celada.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.celada.model.Alumno;
import com.celada.util.HibernateUtil;

public class AlumnoDAOImpl implements AlumnoDAO {

	Session session = HibernateUtil.getSession();

	@SuppressWarnings("unchecked")
	@Override
	public List<Alumno> getAlumnos() {
		session.beginTransaction();
		List<Alumno> alumnos = session.createCriteria(Alumno.class).addOrder(Order.asc("apellido1")).list();
		session.getTransaction().commit();
		return alumnos;
	}

	@Override
	public void addAlumno(Alumno alumno) {
		session.beginTransaction();
		session.saveOrUpdate(alumno);
		session.getTransaction().commit();
	}

	@Override
	public Alumno getAlumnoById(int id) {
		session.beginTransaction();
		Alumno alumno = (Alumno) session.get(Alumno.class, id);
		session.getTransaction().commit();
		return alumno;

	}

	@Override
	public void deleteAlumno(Alumno alumno) {
		session.beginTransaction();
		session.delete(alumno);
		session.getTransaction().commit();
	}
	
	public void closeSession(){
		session.close();
	}
}
