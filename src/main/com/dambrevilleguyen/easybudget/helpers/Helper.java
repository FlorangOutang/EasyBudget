package com.dambrevilleguyen.easybudget.helpers;

import java.util.List;

public class Helper {
	
	public static int subtraction(int money, List<Integer> list)
	{
		for(int i=0; i< list.size(); i++)
		{
			money = money - list.get(i);
		}

		return money;
	}

}
