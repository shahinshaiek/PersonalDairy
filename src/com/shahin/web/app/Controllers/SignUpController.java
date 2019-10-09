package com.shahin.web.app.Controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shahin.web.app.Model.SignUp;

@Controller
public class SignUpController {

/*	we have passed a blank SignUp object in the ModelAndView object with the name "command" because 
	the Spring framework expects an object with the name "command" if you are using <form:form>*/
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView showSignUp()
	{
		return new ModelAndView("signup","signUp", new SignUp());
	}

	
	@RequestMapping(value="/success",method=RequestMethod.POST)
	public String successSignUp(@ModelAttribute("signUp") SignUp signUp,ModelMap modelMap)
	{
		modelMap.addAttribute("name", signUp.getName());
		modelMap.addAttribute("email", signUp.getEmail());
		modelMap.addAttribute("password", signUp.getPassword());
		modelMap.addAttribute("confirmPassword", signUp.getPassword());

		return "SuccesSignUp";
	}
}
