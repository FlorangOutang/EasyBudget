package com.dambrevilleguyen.easybudget.model;

import java.io.IOException;
import java.util.ArrayList;

public class Application {
	
	private static int money;

	public static void main(String[] args) throws IOException {
		ArrayList<Integer> expensesAmount = new ArrayList<Integer>();
		money = 500;
		int amount1 = 50;
		expensesAmount.add(amount1);
		int amount2 = 50;
		expensesAmount.add(amount2);
		int amount3 = 200;
		expensesAmount.add(amount3);
		int amount4 = 100;
		expensesAmount.add(amount4);
		
		
		for(int i=0; i< expensesAmount.size(); i++)
		{
			money = money - expensesAmount.get(i);
		}
		
		System.out.println("You saved " + money);
	}
	
	

}
