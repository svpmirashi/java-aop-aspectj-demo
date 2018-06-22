

import framework.IEngine;


/**
 * @author Shrikrishna Prabhumirashi
 *
 */
public aspect EngineAspect{

	long startTime;
	//AGT compiler - Post compilation 
	pointcut callEngineAspectPointcut() : 
		call(String framework.IEngine.run(..));
	
	before() : callEngineAspectPointcut() {
		// get list of parameters to the method being called
			startTime = System.currentTimeMillis();
			try {
				Thread.sleep(1000);
			}catch(Exception ex) {}
			System.out.println("Method execution started..startTime = " + startTime);		
	}
	
	after() returning(String str) : callEngineAspectPointcut(){
		
		long endTime = System.currentTimeMillis() - startTime;
		String returned;
		try {
			//returned = thisJoinPoint.getThis().toString();
			returned = "Returned value : " + str;
			
		}
		catch(Exception  e) {
			returned = "Exception while ((AspectjDemoTest)thisJoinPoint.getThis())";
		}
		System.out.println("toLongString = " + returned);
		System.out.println("Method execution completed in "+ endTime + " ms");
	}
	
}