package controller;

import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class LoginController {
	public String error = "Please enter username and password";
	
//   @RequestMapping(value = "/index", method = RequestMethod.GET)
//   public String index() {
//	   return "index";
//   }
//   
//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	
//	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		
//		if(username != null && password != null) {
//			if(username.equalsIgnoreCase("admin") && password.equals("admin")) {
//				return new ModelAndView("confirmation", "username", username);
//			}else {
//				return new ModelAndView("login", "error", "Username or password is invalid");
//			}
//		}
//		return new ModelAndView("login", "error", "Please enter username and password");	
//	}
//
//   @RequestMapping(value = "/redirect", method = RequestMethod.POST)
//   public String redirect() {
//	   return "redirect:confirmation";
//   }
//   	   
//   @RequestMapping(value = "/confirmation", method = RequestMethod.GET)
//   public String confirmation() {
//	   return "confirmation";
//   }
	//=====================================================================================//
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/checklogin")
	public String checklogin(@RequestParam("username") String username, 
			@RequestParam("password") String password, Model model) {
//		if(username.equalsIgnoreCase("admin") && password.equals("admin")) {
//			model.addAttribute("username", username);
//			return "confirmation";
//		}else {
//			model.addAttribute("error", "Username or password is invalid");
//			return "login";
//		}
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		AccountJDBCTemplate accountJDBCTemplate = (AccountJDBCTemplate) context.getBean("accountJDBCTemplate");
		Account acc = accountJDBCTemplate.findByUser_mail(username);
		if(acc.getUser_mail().equals(username) && acc.getPassword().equals(password)) {
			model.addAttribute("username", username);
			return "confirmation";
		}else {
			model.addAttribute("error", "Username or password is invalid");
			return "login";
		}
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "login";
	}

}
