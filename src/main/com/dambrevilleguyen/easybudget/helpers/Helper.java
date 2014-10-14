package com.dambrevilleguyen.easybudget.helpers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Helper {
	
	public static String readFirstLine(InputStream inputStream) throws IOException
    {
        return new BufferedReader(new InputStreamReader(inputStream)).readLine();
    }
	
	public static int subtraction(int money, ArrayList<Integer> expensesAmount)
	{
		for(int i=0; i< expensesAmount.size(); i++)
		{
			money = money - expensesAmount.get(i);
		}

		return money;
	}

}
