package org.jsp.springmvcdemo.controller;
import org.jsp.springmvcdemo.dto.User;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Controller
public class HomeController{
	@RequestMapping(value = "/open-home")
	public String openHome(@RequestParam(name ="views") String page) {
		return page;
	}

	@RequestMapping(value = "/getSum")
	public String findSum(@RequestParam int n1,@RequestParam int n2, Model model) {
		model.addAttribute("result", "The sum is:"+(n1+n2));
		return "print";
	}
	@RequestMapping(value = "/getDiff")
	public String findDiff(@RequestParam int n1,@RequestParam int n2, Model model) {
		model.addAttribute("result1", "The Diff is:"+(n1-n2));
		return "print";
	}
	//Using @RequestParam
	@RequestMapping(value = "/regi")
	@ResponseBody
	public String printData(@RequestParam String name,@RequestParam String email,@RequestParam long phone,@RequestParam int age,@RequestParam String gender,@RequestParam String password) {
		System.out.println("Name:"+name);
		System.out.println("Email:"+email);
		System.out.println("Phone number:"+phone);
		System.out.println("Age:"+age);
		System.out.println("Gender:"+gender);
		System.out.println("Password:"+password);
		return "The data has been printed";
	}
	//Using @ModelAttribute
	@RequestMapping("/open-register")
	public ModelAndView openRegister() {
		ModelAndView view=new ModelAndView();
		view.setViewName("register");
		view.addObject("u",new User());
		return view;
	}
//    @PostMapping(value = "/register")
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	@ResponseBody
	public String printData(@ModelAttribute(name="u") User user) {
		System.out.println("Name:"+user.getName());
		System.out.println("Email:"+user.getEmail());
		System.out.println("Phone number:"+user.getPhone());
		System.out.println("Age:"+user.getAge());
		System.out.println("Gender:"+user.getGender());
		System.out.println("Password:"+user.getPassword());
		return "The data has been printed";
	}
}

