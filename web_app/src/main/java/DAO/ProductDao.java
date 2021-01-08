package DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import Model.Product;

public class ProductDao{
	@PersistenceContext
	private EntityManager em;
	
	public List<Product> getAllProduct() {
		return em.createQuery("SELECT * FROM product", Product.class).getResultList();
	}
	
}