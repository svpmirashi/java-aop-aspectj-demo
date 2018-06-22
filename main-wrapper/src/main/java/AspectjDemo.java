
import java.util.logging.Logger;

import framework.Engine;

/**
 * @author L.Vanzeune
 *
 */
public class AspectjDemo{
    
	String aspectDemoString = "Member of AspectjDemo class..";
    private static final Logger LOGGER = Logger.getLogger(AspectjDemo.class.getName());
    
    private AspectjDemo() {
        
    }
	
	public static void main(String[] args){
		
	    LOGGER.info("In AspectjDemo main method.");
		
	    Engine engine = new Engine();
		try
		{
			engine.run();
		}catch(Exception ex) {}
	}
}
