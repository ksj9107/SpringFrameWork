package kr.green.spring.controller;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.spring.dao.AccountDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
  private AccountDao accountDao;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,Integer num,Integer num2,Integer res) {
		logger.info("Welcome home! The client locale is {}.", locale);
		String email = accountDao.getEmail("stajun");
		
		model.addAttribute("num",num);
		model.addAttribute("num2",num2);
		model.addAttribute("res",email);
		
		return "member/login";
	}

	@RequestMapping(value = "/test",method=RequestMethod.GET)
	public String testGet(Model model) {
		model.addAttribute("Company","Green");
		return "test/test";
	}
	
	@RequestMapping(value = "/test",method=RequestMethod.POST)
	public String testPost(Model model,Integer num,Integer num2) {
		System.out.println("숫자1 : "+num);
		System.out.println("숫자2 : "+num2);
		if(num==null) num=0;
		if(num2==null) num2=0;
		Integer res = num+num2;
		model.addAttribute("num",num);
		model.addAttribute("num2",num2);
		model.addAttribute("res",res);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/signup",method=RequestMethod.GET)
	public String signupGet() {
		return "member/signup";
	}
	
	@RequestMapping(value = "/signup",method=RequestMethod.POST)
	public String signupPost(String id, String pw,String pwconfirm,String gender,String email) {
		System.out.println("id:"+id);
		System.out.println("passwd:"+pw);
		System.out.println("pwconfirm::"+pwconfirm);
		System.out.println("gender:"+gender);
		System.out.println("email:"+email);
		return "redirect:/signup";
	}
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String loginGet() {
		
		return "member/login";
	}
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	public String loginPost(String id, String password,Model model) {
		System.out.println("id:"+id);
		System.out.println("passwd:"+password);
		if()
		return "redirect:/login";
	}
	
}
