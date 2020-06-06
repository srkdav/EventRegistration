package com.app.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.dao.ICustomerDao;
import com.app.pojos.User;
import com.app.service.ICustomerService;
import com.app.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private ICustomerService cus_service;

	@Autowired
	private IUserService user_service;

	@Autowired
	private ICustomerDao dao;

	public UserController() {
	}

	@GetMapping("/login")
	public String loginForm(HttpSession req) {
		req.invalidate();
		return "/user/login";
	}

	@PostMapping("/login")
	public String loginFormPut(@RequestParam(name = "email") String email, @RequestParam String password,
			HttpSession req) {
		try {
			
			User u = user_service.autheticateUser(email, password);
			String name=u.getName();
			req.setAttribute("admin_name", name);
			return "redirect:/user/home";
		} catch (Exception e) {
			String msg="Check your email or password";
			req.setAttribute("login_message",msg );
			return "/user/login";
		}
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showCustomerList(Model map, Model model) {
		int page_id = Integer.parseInt("1");
		map.addAttribute("customerList", cus_service.getAllCustomers(page_id));
		return "/user/home";
	}

	@GetMapping("/graph")
	public String barGraph(Model model) {
		Map<String, Long> surveyMap = new LinkedHashMap<>();
		List<Object[]> list = dao.getCustomerGroupedBy();
		Map<String, Long> hm = new HashMap<>();
		for (int i = 0; i < list.size(); i++) {
			String str = (String) list.get(i)[0];
			long val = (long) list.get(i)[1];
			hm.put(str, val);
		}
		surveyMap.put("self", hm.get("self"));
		surveyMap.put("group", hm.get("group"));
		surveyMap.put("corp", hm.get("corp"));
		model.addAttribute("surveyMap", surveyMap);
		return "/user/graph";
	}

}