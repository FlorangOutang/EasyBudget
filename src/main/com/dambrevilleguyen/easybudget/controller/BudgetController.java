package com.dambrevilleguyen.easybudget.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
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
	public ModelAndView printWelcome() 
	{	
		List<Expenses> expensesList = new ArrayList<Expenses>(Arrays.asList(Expenses.values()));
		
		ModelAndView modelAndView = new ModelAndView("budget", "commandBudget", new BudgetHandler());
		
		modelAndView.addObject("message", "Welcome to Easy Budget !");
		modelAndView.addObject("expensesList", expensesList);

		return modelAndView;
	}
	
	@RequestMapping(value = "/newBudget", method = RequestMethod.POST)
	public String printNewBudget(ModelMap model, @ModelAttribute BudgetHandler budgetHandler)
	{	
		float result = Helper.subtraction(budgetHandler.getMoney(), budgetHandler.getExpenses());
		if(result < 0)
		{
			model.addAttribute("newMoney", "Error: negative value ");
			return "newBudget";
		}
		model.addAttribute("newMoney", result);
		
		return "newBudget";
	}
}