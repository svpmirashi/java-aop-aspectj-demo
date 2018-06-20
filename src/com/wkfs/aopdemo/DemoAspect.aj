package com.wkfs.aopdemo;
//project 2
public aspect DemoAspect {
	
	long startTime;
	//AGT compiler - Post compilation 
	pointcut callDemoAspectPointcut() : 
		call(void com.wkfs.aopdemo.AOPDemo.comMethod1(..));
	
	before() throws Exception : callDemoAspectPointcut() {
		// get list of parameters to the method being called
			startTime = System.currentTimeMillis();
			Thread.sleep(1000);
			System.out.println("Method execution started..startTime = " + startTime);		
	}
	
	after() throws Exception : callDemoAspectPointcut(){
		Thread.sleep(1000);
		long endTime = System.currentTimeMillis() - startTime;
		System.out.println("Method execution completed in "+ endTime + " ms");
	}
}
