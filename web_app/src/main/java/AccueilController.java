import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import DAO.CustomerDao;
import DAO.ProductDao;
import Model.Product;

@Controller
public class AccueilController {
	private final float TVA = 15;
	private ProductDao pDao;
	private CustomerDao cDao;
	
	@PostMapping({"/", "/accueil"})
	public String listProducts(String s) throws ParseException {
	    JSONParser parser = new JSONParser();  
	    JSONObject jsonRequete = (JSONObject) parser.parse(s);	    
		List<Product> listProduct = pDao.getAllProduct();
		float marge = cDao.getMarge(jsonRequete.get("email").toString(), jsonRequete.get("password").toString());
		
		JSONObject json = new JSONObject();		
		int i = 0;
		
		for (Product p : listProduct)
		{
			JSONArray array = new JSONArray();
			array.add(p.getName());
			array.add(p.getCout_de_fabrication());
			array.add(TVA*p.getCout_de_fabrication()*marge);
			json.put(i, array);
		}
		return json.toJSONString();
	}
	
	public int getProductCout(int id)
    {
        if (id > 0)
            return (int)TVA;
        else return -1;
    }
}