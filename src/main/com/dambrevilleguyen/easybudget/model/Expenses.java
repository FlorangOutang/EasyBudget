package com.dambrevilleguyen.easybudget.model;

import com.dambrevilleguyen.easybudget.exception.IllegalExpensesException;



public enum Expenses {
	
	POCKET_MONEY("Pocket Money"), TRIPS("Trip"), GROCERY_SHOPPING("Grocery Shopping"), SHOPPING("Shopping"), HOBBIES("Hobbies");
	
	public final String value;

	private Expenses(String value)
    {
        this.value = value;
    }
	
	public static Expenses get(String name) throws IllegalExpensesException
    {
        if (name == null)
        {
            throw new IllegalExpensesException(name);
        }

        try
        {
            return valueOf(name.toUpperCase());
        }
        catch (IllegalArgumentException e)
        {
            throw new IllegalExpensesException(name);
        }
    }

}
