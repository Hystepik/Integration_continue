package DAO;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


public class CustomerDao{
	@PersistenceContext
	private EntityManager em;
	
	public float getMarge(String login, String password) {
		if (customerExist(login, password))
		{
			return 5;
		}
		else
			return -1;
		
	}
	
	private boolean customerExist (String login, String password) {
		boolean result = false;
		try
		{	    
			int nbResult = em.createQuery("SELECT id FROM customer c WHERE c.Name LIKE :custName AND c.mdp LIKE :custMdp", int.class)
			.setParameter("custName", login)
			.setParameter("custMdp", password)
			.getResultList().size();
	    
			if (nbResult > 0) return true;
			else return false;
		}
		catch(Exception e){
			result = false;
		}
		return result;
	}
	
}