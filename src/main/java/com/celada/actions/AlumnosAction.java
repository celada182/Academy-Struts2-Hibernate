package com.celada.actions;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.celada.dao.AlumnoDAOImpl;
import com.celada.dao.CursoDAOImpl;
import com.celada.model.Alumno;
import com.celada.model.Curso;
import com.opensymphony.xwork2.ActionSupport;

public class AlumnosAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;
	HttpServletRequest req;
	List<Alumno> alumnos;
	Set<Curso> cursos;
	Alumno alumno;
	Curso curso;
	AlumnoDAOImpl alumnoDAO = new AlumnoDAOImpl();
	CursoDAOImpl cursoDAO = new CursoDAOImpl();

	public List<Alumno> getAlumnos() {
		return alumnos;
	}

	public void setAlumnos(List<Alumno> alumnos) {
		this.alumnos = alumnos;
	}

	public Set<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(Set<Curso> cursos) {
		this.cursos = cursos;
	}
	
	public void setAlumno(Alumno alumno) {
		this.alumno = alumno;
	}

	public Alumno getAlumno() {
		return alumno;
	}

	public Curso getCurso() {
		return curso;
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req = req;
	}

	public String verAlumnos() {
		setAlumnos(alumnoDAO.getAlumnos());
		return SUCCESS;
	}

	public String nuevoAlumno() {
		alumno = new Alumno();
		return SUCCESS;
	}

	public String anadirAlumno() {
		alumno.setNombre(req.getParameter("nombre"));
		alumno.setApellido1(req.getParameter("apellido1"));
		alumno.setApellido2(req.getParameter("apellido2"));
		alumno.setEmail(req.getParameter("email"));
		alumnoDAO.addAlumno(alumno);
		return SUCCESS;
	}

	public String editarAlumno() {
		alumno = alumnoDAO.getAlumnoById(Integer.parseInt(req.getParameter("id")));
		return SUCCESS;
	}

	public String modificarAlumno() {
		int id = Integer.parseInt(req.getParameter("id"));
		Alumno alumno = alumnoDAO.getAlumnoById(id);
		alumno.setNombre(req.getParameter("nombre"));
		alumno.setApellido1(req.getParameter("apellido1"));
		alumno.setApellido2(req.getParameter("apellido2"));
		alumno.setEmail(req.getParameter("email"));
		alumnoDAO.addAlumno(alumno);
		return SUCCESS;
	}
	
	public String eliminarAlumno(){
		int id = Integer.parseInt(req.getParameter("id"));
		Alumno alumno = alumnoDAO.getAlumnoById(id);
		alumnoDAO.deleteAlumno(alumno);
		return SUCCESS;
	}

	public String elegirCurso() {
		int id = Integer.parseInt(req.getParameter("id"));
		Alumno alumno = alumnoDAO.getAlumnoById(id);
		setAlumno(alumno);
		setCursos(new HashSet<Curso>(cursoDAO.getCursos()));
		return SUCCESS;
	}

	public String confirmarCurso() {
		int curso_id = Integer.parseInt(req.getParameter("curso"));
		curso = cursoDAO.getCursoById(curso_id);
		int alumno_id = Integer.parseInt(req.getParameter("id"));
		setAlumno(alumnoDAO.getAlumnoById(alumno_id));
		return SUCCESS;
	}
	
	public String inscribirCurso(){
		int curso_id = Integer.parseInt(req.getParameter("curso_id"));
		curso = cursoDAO.getCursoById(curso_id);
		int alumno_id = Integer.parseInt(req.getParameter("alumno_id"));
		setAlumno(alumnoDAO.getAlumnoById(alumno_id));
		alumnoDAO.closeSession();
		curso.setPlazas(curso.getPlazas()-1);
		Set<Alumno> alumnos = curso.getAlumnos();
		alumnos.add(alumno);
		curso.setAlumnos(alumnos);
		try {
			cursoDAO.addCurso(curso);
		} catch (Exception e) {
			System.out.println("Alumno ya inscrito en el curso.");
		}
		return SUCCESS;
	}
	public String cursosAlumno(){
		int id = Integer.parseInt(req.getParameter("id"));
		Alumno alumno = alumnoDAO.getAlumnoById(id);
		setCursos(alumno.getCursos());
		return SUCCESS;
	}

}
