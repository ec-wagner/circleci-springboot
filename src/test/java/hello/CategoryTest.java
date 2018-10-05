package hello;

import org.junit.Test;
import org.junit.experimental.categories.Category;

@Category(SlowUnitTest.class)
public class CategoryTest {

    @Test
    public void categoryTest() {
        System.out.println("The category: UnitTest");
    }
}
