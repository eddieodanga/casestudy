package com.CaseStudyTemplate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.CaseStudyTemplate.models.Login;
import com.CaseStudyTemplate.service.LoginService;


@Controller
@RequestMapping(value = "/")
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping("/")
	    public ModelAndView loginHandler1() {
	        ModelAndView mav = new ModelAndView("login");    
	        return mav;
	}

	@RequestMapping(value = "loginProcess", method = RequestMethod.GET)
	public ModelAndView loginPageHandler(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println(loginService.validateLogin(username, password));
		if (loginService.validateLogin(username, password) != null) {
			Login newUser = loginService.getUser(username);
			request.getSession().setAttribute("user", newUser);
			mav.addObject(newUser);
			mav.setViewName("index");
		} else {
			request.setAttribute("message",  "Wrong Credentials, Please enter correct Username and Password");
			mav.setViewName("login");
		}
			
		return mav;
	}

}