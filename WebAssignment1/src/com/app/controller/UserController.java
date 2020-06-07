package com.app.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
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
//		req.invalidate();
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
		Map<String, Float> surveyMap = new LinkedHashMap<>();
		Map<LocalDate, Long> dateMap = new HashMap<>();
		List<Object[]> list = dao.getCustomerGroupedByTickets();
		List<Object[]> list_date = dao.getCustomerGroupedByDate();
		
		Map<String, Long> hm = new HashMap<>();
		for (int i = 0; i < list.size(); i++) {
			String str = (String) list.get(i)[0];
			long val = (long) list.get(i)[1];
			hm.put(str, val);
		}
		List<Date> list_date_view = new ArrayList<>();
		List<Integer> list_count_view = new ArrayList<>();

		System.out.println(list_date);
		for (int i = 0; i < list_date.size(); i++) {
			LocalDate date = (LocalDate) list_date.get(i)[0];
			long val = (long) list.get(i)[1];
			dateMap.put(date, val);
		}
		System.out.println("map"+ dateMap);
		float x = hm.get("self")*100/3;
		surveyMap.put("self", x);
		x=hm.get("group")*100/3;
		surveyMap.put("group", x);
		x=hm.get("corp")*100/3;
		surveyMap.put("corp", x);
		model.addAttribute("dateMap", dateMap);
		model.addAttribute("surveyMap", surveyMap);
		return "/user/graph";
	}

}