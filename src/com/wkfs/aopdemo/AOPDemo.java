package com.wkfs.aopdemo;

public class AOPDemo {
//project 1
	public static void main(String[] args) {
		AOPDemo demoObj = new AOPDemo();
		demoObj.comMethod1(1);
		demoObj.comMethod1(1,"test");
	}
	
	public void comMethod1(int num)
	{
		System.out.println("From ComMethod1(int)..");
	}

	public void comMethod1(int num, String str)
	{
		System.out.println("From ComMethod1(int, String)..");
	}
}
