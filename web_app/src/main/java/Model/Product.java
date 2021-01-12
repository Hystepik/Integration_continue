package Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private float cout_de_fabrication;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getCout_de_fabrication() {
		return cout_de_fabrication;
	}
	public void setCout_de_fabrication(float cout_de_fabrication) {
		this.cout_de_fabrication = cout_de_fabrication;
	}

}
