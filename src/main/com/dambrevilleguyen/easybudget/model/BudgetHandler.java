package com.dambrevilleguyen.easybudget.model;

import java.util.ArrayList;
import java.util.List;

public class BudgetHandler {
	
	private int money;
	private List<Integer> expenses= new ArrayList<Integer>();
	
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}

    public List<Integer> getExpenses() {
        return expenses;
    }
    public void setExpenses(List<Integer> expenses) {
        this.expenses= expenses;
    }

}
