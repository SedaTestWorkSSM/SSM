package com.testssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testssm.proj.User;
import com.testssm.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;

	@RequestMapping("/showUser")
	public String toIndex(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}

	@RequestMapping("/login")
	public String login(User user) {
		user = this.userService.login(user.getUserName(), user.getPassword());
		if (user != null) {
			return "login";
		} else {
			return "";
		}
	}
}