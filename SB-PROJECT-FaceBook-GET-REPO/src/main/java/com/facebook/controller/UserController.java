package com.facebook.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.facebook.Service.UserService;
import com.facebook.dto.UserReigtserDto;

//import com.facebook.Serives.UserService;
//import com.facebook.dto.UserReigtserDto;

@Controller
public class UserController {

	// dependency Injection
	@Autowired
	UserService userService;

	@GetMapping("Home/Register")
	public String sayHello() {
		return "userRegister";
	}

	//
	// User Register

	@PostMapping("/user/regester")
	public ModelAndView registerUser(HttpServletRequest request) {

		UserReigtserDto userReigtserDto = new UserReigtserDto();

		userReigtserDto.setName(request.getParameter("name"));
		userReigtserDto.setEmailId(request.getParameter("email"));
		userReigtserDto.setContact(request.getParameter("contact"));
		userReigtserDto.setPassword(request.getParameter("pwd"));

		String result = userService.userRegistration(userReigtserDto);
		
		
		 
		
		
		

		ModelAndView mv = new ModelAndView();
		mv.setViewName("rgisterResult");
		mv.addObject("message", result);

		// /WEB-INF/view/rgisterResult.jsp
		return mv;

	}

	// To load the Login Page
	@GetMapping("/login")
	public ModelAndView loadLoginPage() {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		
		return modelAndView;
	}

	@GetMapping("/loginCheck")
	public ModelAndView validateUser(HttpServletRequest request) {

		String result = userService.validateUser(request.getParameter("email"), request.getParameter("pwd"));

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("loginResult");
		modelAndView.addObject("loginResultMessage", result);

		return modelAndView;
	}

}