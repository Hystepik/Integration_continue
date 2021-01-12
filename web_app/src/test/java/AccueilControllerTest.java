
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class AccueilControllerTest{

	private AccueilController controller = null;
	
	@BeforeEach
	void SetUp()
	{
		controller = new AccueilController();
	}
	@Test
	void testListProducts() {
		assertTrue(true);
		assertEquals(controller.getProductCout(2), 15);
	}
	@Test
	void testGetProductName(){
		assertTrue(true);
		assertEquals(controller.getProductName(1), "unBonProduit");
	}
}
