package com.app.controller;

import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.dao.ICustomerDao;
import com.app.pojos.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private ICustomerDao dao;

	@Value("${upload_image_path}")
	private String imagePath;

	@GetMapping("/insert")
	public String insertCustomer(Customer c,HttpSession session) {
		
		return "/customer/insert";
	}

	@PostMapping("/insert") // Store the details in flashMap and register details.
	public String registerVendor(@ModelAttribute("customer") Customer customer,
			final BindingResult mapping1BindingResult, final Model model, RedirectAttributes flashMap,
			HttpSession session) {

		model.addAttribute("newCustomer", customer);

		session.setAttribute("fullName", customer.getFullName());
		session.setAttribute("mobile", customer.getMobile());
		session.setAttribute("type", customer.getType());
		session.setAttribute("email", customer.getEmail());
		session.setAttribute("tickets", customer.getCountTickets());
		session.setAttribute("cust", customer);
		return "redirect:/customer/photo";
	}

	@GetMapping("/photo")
	public String uploadfilePage() {
		return "/customer/photo";
	}

	@PostMapping(value = "/photo")
	public String uploadFile(@RequestParam("contents") MultipartFile file, Model map, HttpSession session) {
		String uploadLocation = imagePath;
		
		String name = (String) session.getAttribute("mobile");
		if (file.getSize() > 10240) {
			String msg = "Photo size must be less than 200kb";
			map.addAttribute("message", msg);
			session.setAttribute("message1", msg);
			return "redirect:/customer/photo";
		}
		try {
			File dest = new File(uploadLocation, name);
			file.transferTo(dest);
		} catch (Exception e) {
			map.addAttribute("mesg", "Image upload failed : " + e.getMessage());
		}
		return "redirect:/customer/preview";
	}

	@GetMapping("/preview")
	public String displayBeforePreview(Customer c, HttpSession session) {
		return "/customer/preview";
	}

	@RequestMapping(value = "/preview", params = "register", method = RequestMethod.POST)
	public String displayBeforePreview1(@ModelAttribute("customer") Customer c, HttpSession session) {
		System.out.println("preview" + session.getAttribute("mobile"));
		return "redirect:/customer/detail";
	}

	@RequestMapping(value = "/preview", params = "cancel", method = RequestMethod.POST)
	public String displayBeforePreview2(@ModelAttribute("customer") Customer c, HttpSession session) {
		return "redirect:/customer/insert";
	}

	@GetMapping("/detail") // This displays the list after final submission.
	public String displayFinalPreview(Model model, HttpSession session) {
		Customer c = (Customer) session.getAttribute("cust");
		try {
			dao.registerCustomer(c);// Register details
			session.setAttribute("id", c.getId());
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}
		return "/customer/detail";

	}

}
