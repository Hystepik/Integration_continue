import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Model.Customer;

public class CustomerTest {
	
private Customer customer;
	
	@BeforeEach
	void SetUp()
	{
		customer = new Customer();
	}
	@Test
	void getCustomerName() {
		customer.setName("laulau");
		String name = customer.getName();
		assertEquals(name, 35);
	}

}
