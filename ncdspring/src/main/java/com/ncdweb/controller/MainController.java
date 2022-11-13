package com.ncdweb.controller;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ncdweb.dao.Repo;
import com.ncdweb.entity.Pat;
import com.ncdweb.entity.Searchpagedata;
import com.ncdweb.entity.Tabledata;

@Controller
public class MainController {
	@Autowired
	Repo repo;
	Pat patg;
	String k;

	@GetMapping("/")
	public String home() {
		System.out.println("this is home page");
		return "welcome";
	}

	@RequestMapping("/signuppage")
	public String signup() {
		System.out.println("this is signuppage ");
		return "signuppage";
	}

	@RequestMapping("/searchpage")
	public String searchpage() {
		System.out.println("this is searchpage ");
		return "searchpage";
	}

	@RequestMapping("/savedata")
	public String savedata(@ModelAttribute Pat pat, HttpSession session) {
		System.out.println("this is save data ");
		System.out.println(pat);
		System.out.println("data save successfull in object data ");
		patg = pat;
		repo.save(pat);
		session.setAttribute("message", "data save successfull in data base ");
		System.out.println("data save successfull in data base ");

		return "table";
	}

	public void updateCustomerContacts(int id, String sc, String res) {
		System.out.println("UPDATE CUSTOMER FUNCTION IS CALLING  ");
		Pat myCustomer = repo.findById(id);
		myCustomer.score = sc;
		myCustomer.result = res;
		patg=myCustomer;
		System.out.println("this is the customer data ");
		System.out.println(myCustomer);
		repo.save(myCustomer);
	}

	@RequestMapping("/result")
	public String result(Tabledata td, Pat pat, Model po) {

		pat = patg;
//		System.out.println("this is table data store in the table data page ");
//		System.out.println(td);
//		System.out.println("total score is ");
//		System.out.println("this is result page ");
//		System.out.println("sl number is :" + patg.getSlno());
		int sc = td.getPp1() + td.getPp2() + td.getPp3() + td.getPp4() + td.getPp5() + td.getPp6();
		System.out.println("the valueof score is:  " + sc);
		String result1 = "screening is not required";
		if (sc > 4) {
			result1 = ("screening is required");
		}	

//	o update in the data base by global object 
		int id = patg.getSlno();
//		String pid = patg.getPatid();
		updateCustomerContacts(id, " " + sc, result1);
		System.out.println("this is result page ");
//		System.out.println("pat value  " + pat);
//		System.out.println("patg value " + patg);
		po.addAttribute(patg);

		return "result";
	}

	

	@RequestMapping("/searchdata")
	public String search(Pat pat, Searchpagedata sp, Model model) {

//		pat = patg;
		System.out.println(" CALLING TO SEARCH  DATA METHOD BY PRESSING  searchhhhhhhhhhhh ");

		System.out.println("seach input value :" + sp.getInp());
		System.out.println("drop downlist  value :" + sp.getDropdownselect());

//		int k=23;
		String pid = sp.getInp();
		String choice =sp.getDropdownselect();
//		model.addAttribute("records", repo.findAll());
		model.addAttribute("inp",pid);
		model.addAttribute("choice",choice);
		List<Pat> pat1=(List<Pat>) repo.findAll();
		System.out.println("hamara pat1"+pat1);
		
		 
		List<Pat> result = new ArrayList<Pat>();
		for (Pat person: pat1) {
//			System.out.println(person);
//			System.out.println(person.getPatid());
			String k1=person.getFirstname().trim();
			System.out.println(k1);
//			boolean lol=FALSE;
			if(choice.equals("FIRSTNAME")) {
				System.out.println("firstname called");
				
				 if (person.getFirstname().trim().equals(pid)) 
				    {	    
				        result.add(person);
				        System.out.println(result);
				    }
			}
			else if(choice.equals("LASTNAME")) {
				System.out.println("lastname called");
				if (person.getLastname().trim().equals(pid)) 
			    {	    
			        result.add(person);
			        System.out.println(result);
			    }
			}
			else {
				
				System.out.println("patientid is called");
				if (person.getPatid().trim().equals(pid)) 
			    {	    
			        result.add(person);
			        System.out.println(result);
			    }
			}
		   
		    

		}
		
		System.out.println("############this is reulst data afte filtering it::::::::::::::::::::");
		System.out.println(result);
		
		model.addAttribute("records",result);

		System.out.println("THIS IS THE SEARCHPAGE OBJECT");
		System.out.println(sp);

//		System.out.println("sl number is :" + patg.getSlno());

		return "searchpage";
	}

	@RequestMapping("/all_data")
	public String all(Model model) {

		model.addAttribute("records", repo.findAll());
		System.out.println("CALLING TO ALL DATA METHOD BY PRESSING THE ALL DATA ");

		System.out.println(model);
//		System.out.println(pat);

//		System.out.println("sl number is :" + patg.getSlno());

		return "searchpage";
	}
}
