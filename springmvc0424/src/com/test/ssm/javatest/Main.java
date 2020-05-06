package com.test.ssm.javatest;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		User u = new User("Tom", "Tom123", 30);
		
		String name = BeanUtil.getValueByPropertyName(u, "username").toString();
		
		System.out.println("-------------------" + name);

	}

}
