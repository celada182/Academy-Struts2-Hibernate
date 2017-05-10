package com.celada.actions;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.celada.dao.CursoDAOImpl;
import com.celada.model.Alumno;
import com.celada.model.Curso;
import com.opensymphony.xwork2.ActionSupport;

public class CursosAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;
	List<Curso> cursos;
	HttpServletRequest req;
	CursoDAOImpl cursoDAO = new CursoDAOImpl();
	Curso curso;
	Set<Alumno> alumnos;

	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public Set<Alumno> getAlumnos() {
		return alumnos;
	}

	public void setAlumnos(Set<Alumno> alumnos) {
		this.alumnos = alumnos;
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req = req;
	}

	public String verCursos() {
		setCursos(cursoDAO.getCursos());
		return SUCCESS;
	}

	public String nuevoCurso() {
		return SUCCESS;
	}

	public String anadirCurso() {
		Curso curso = new Curso();
		curso.setNombre(req.getParameter("nombre"));
		curso.setFechainicio(req.getParameter("fechainicio"));
		curso.setFechafinal(req.getParameter("fechafinal"));
		curso.setPlazas(Integer.parseInt(req.getParameter("plazas")));
		cursoDAO.addCurso(curso);
		return SUCCESS;
	}

	public String editarCurso() {
		curso = cursoDAO.getCursoById(Integer.parseInt(req.getParameter("id")));
		return SUCCESS;
	}

	public String modificarCurso() {
		int id = Integer.parseInt(req.getParameter("id"));
		Curso curso = cursoDAO.getCursoById(id);
		curso.setNombre(req.getParameter("nombre"));
		curso.setFechainicio(req.getParameter("fechainicio"));
		curso.setFechafinal(req.getParameter("fechafinal"));
		curso.setPlazas(Integer.parseInt(req.getParameter("plazas")));
		cursoDAO.addCurso(curso);
		return SUCCESS;
	}
	
	public String eliminarCurso(){
		int id = Integer.parseInt(req.getParameter("id"));
		Curso curso = cursoDAO.getCursoById(id);
		cursoDAO.deleteCurso(curso);
		return SUCCESS;
	}
	
	public String alumnosCurso(){
		int id = Integer.parseInt(req.getParameter("id"));
		Curso curso = cursoDAO.getCursoById(id);
		setAlumnos(curso.getAlumnos());
		return SUCCESS;
	}
}
