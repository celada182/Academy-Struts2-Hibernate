package com.celada.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "cursos")
public class Curso implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private String nombre;
	private String fechainicio;
	private String fechafinal;
	private int plazas;
	private Set<Alumno> alumnos = new HashSet<Alumno>(0);

	public Curso() {
	}

	public Curso(String nombre, String fechainicio, String fechafinal, int plazas) {
		super();
		this.nombre = nombre;
		this.fechainicio = fechainicio;
		this.fechafinal = fechafinal;
		this.plazas = plazas;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "nombre", nullable = false, length = 50)
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	@Column(name = "fechainicio")
	public String getFechainicio() {
		return fechainicio;
	}

	public void setFechainicio(String fechainicio) {
		this.fechainicio = fechainicio;
	}

	@Column(name = "fechafinal")
	public String getFechafinal() {
		return fechafinal;
	}

	public void setFechafinal(String fechafinal) {
		this.fechafinal = fechafinal;
	}

	@Column(name = "plazas")
	public int getPlazas() {
		return plazas;
	}

	public void setPlazas(int plazas) {
		this.plazas = plazas;
	}

	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "cursos_alumnos", joinColumns = {
			@JoinColumn(name = "id_curso", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "id_alumno",
					nullable = false, updatable = false) })
	public Set<Alumno> getAlumnos() {
		return alumnos;
	}

	public void setAlumnos(Set<Alumno> alumnos) {
		this.alumnos = alumnos;
	}

	@Override
	public String toString() {
		return "Curso [id=" + id + ", nombre=" + nombre + ", fechainicio=" + fechainicio + ", fechafinal=" + fechafinal
				+ ", plazas=" + plazas + "]";
	}
}
