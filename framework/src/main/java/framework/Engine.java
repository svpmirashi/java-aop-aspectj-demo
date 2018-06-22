package framework;

public class Engine implements IEngine {
	
	@Override
	public String run() 
	{
		System.out.println("IEngine is running now.");
		try {
			Thread.sleep(1000);
		}
		catch(Exception e) {}
		System.out.println("IEngine run completed..");
		return "Returned from implementation of IEngine.run()";
	}

}
