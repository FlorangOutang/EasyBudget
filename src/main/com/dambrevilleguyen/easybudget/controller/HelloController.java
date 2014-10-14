package com.dambrevilleguyen.easybudget.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dambrevilleguyen.easybudget.helpers.Helper;
import com.dambrevilleguyen.easybudget.model.BudgetHandler;
 
@Controller
@RequestMapping("/budget")
public class HelloController {
 
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) 
	{
 
		model.addAttribute("message", "Spring 3 MVC Hello World");
		return "budget";
	}
	
	@RequestMapping(value = "/newBudget", method = RequestMethod.POST)
	public String printNewBudget(ModelMap model)
	{
		BudgetHandler budgetHandler = new BudgetHandler();
		int money = budgetHandler.getMoney();
		int groceryShopping = budgetHandler.getGroceryShopping();
		int shopping = budgetHandler.getShopping();
		int hobbies = budgetHandler.getHobbies();
		int trips = budgetHandler.getTrips();
		int pocketMoney = budgetHandler.getPocketMoney();
		// There is another way to get all the fields -> ModelAndView or Model

		ArrayList<Integer> expensesAmount = new ArrayList<Integer>();
		expensesAmount.add(groceryShopping);
		expensesAmount.add(shopping);
		expensesAmount.add(hobbies);
		expensesAmount.add(trips);
		expensesAmount.add(pocketMoney);
		
		Helper.subtraction(money, expensesAmount);
		
		return "budget";
	}
}