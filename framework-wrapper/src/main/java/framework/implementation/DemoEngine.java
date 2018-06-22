package framework.implementation;

import framework.Engine;

/**
 * @author Shrikrishna Prabhumirashi
 *
 */
public class DemoEngine extends Engine {

	public DemoEngine() {
		
	}
	
	public String run() {
		System.out.println("Starting DemoEngine..");
		String toReturn = "";
		try {
			toReturn = super.run();
		} catch(Exception ex) {}
		return toReturn;
	}
	
	

}
