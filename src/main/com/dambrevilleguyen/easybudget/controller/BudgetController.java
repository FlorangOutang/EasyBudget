package com.dambrevilleguyen.easybudget.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dambrevilleguyen.easybudget.helpers.Helper;
import com.dambrevilleguyen.easybudget.model.BudgetHandler;
import com.dambrevilleguyen.easybudget.model.Expenses;
 
@Controller
public class BudgetController {
	
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public String login(ModelMap model) 
	{	
		return "hello";
	}
 
	@RequestMapping(value= "/budget", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, @ModelAttribute BudgetHandler budgetHandler) 
	{	
		List<Expenses> expensesList = new ArrayList<Expenses>(Arrays.asList(Expenses.values()));

		model.addAttribute("message", "Welcome to Easy Budget !");
		model.addAttribute("expensesList", expensesList);
		return "budget";
	}
	
	@RequestMapping(value = "/newBudget", method = RequestMethod.POST)
	public String printNewBudget(ModelMap model, @ModelAttribute BudgetHandler budgetHandler)
	{	
		Helper.subtraction(budgetHandler.getMoney(), budgetHandler.getExpenses());
		
		return "newBudget";
	}
}