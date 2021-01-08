package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {

	@Id
	private int id;
	private String nom;
	private Float coutFabrication;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public Float getCoutFabrication() {
		return coutFabrication;
	}

	public void setCoutFabrication(Float cout) {
		this.coutFabrication = cout;
	}
}