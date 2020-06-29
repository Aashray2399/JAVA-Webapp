package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class formcontroller {


	@Autowired
	Custrepo repo;
	
	@RequestMapping("/")
	public String form()
	{
		return "form";
	}
	
	
	@RequestMapping("/details")
	public String details(Customers customers)
	{
		repo.save(customers);
		return "form";
	}
	
	
	@RequestMapping("/getdetails")
	public String getdetails()
	{
		return "viewcustomer";
	}
	
	@PostMapping("/getdetails")
	public ModelAndView getdetails (@RequestParam int cid)
	{
		ModelAndView mv=new ModelAndView("Retrieve");
		Customers customers=repo.findById(cid).orElse(null);
		mv.addObject(customers);
		return mv;
	}
	

}
