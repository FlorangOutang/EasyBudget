package com.dambrevilleguyen.easybudget.exception;

public class IllegalExpensesException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public IllegalExpensesException(String expenses)
    {
        super("[ERROR] " + expenses + " is an invalid Expenses. Please enter a valid plugin expenses");
    }

}
