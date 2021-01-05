package DAO;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


public class CustomerDao{
	@PersistenceContext
	private EntityManager em;
	
	public float getMarge(String login, String password) {
		if (customerExist(login, password))
		{
			//requete sql pour obtenir la marge
			return 5;
		}
		else
			return -1;
		
	}
	
	private boolean customerExist (String login, String password) {
		boolean result = false;
		try
		{	    
			int nbResult = em.createQuery("SELECT c FROM customer c WHERE c.Email LIKE :custEmail AND c.mdp LIKE :custMdp", int.class)
			.setParameter("custEmail", login)
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