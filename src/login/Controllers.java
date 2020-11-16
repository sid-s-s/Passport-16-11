package login;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/log")
public class Controllers {
	
	@Autowired
	private ImplDao implDao;
	
	
	 @RequestMapping(value="/sign", method=RequestMethod.GET)
	 public String show(Map<String,Object> model)
	 {
		 Signup i=new Signup();
		 model.put("reg",i);
		 return "Signup";
	 }
	 
	 @RequestMapping(value="/insert", method=RequestMethod.POST)
	 public ModelAndView insert(@Valid @ModelAttribute("reg") Signup i,BindingResult result)
	    {
		 
		 if(result.hasErrors())
		 {
			 return new ModelAndView("reg");
		 }
		 implDao.insert(i);
		 
	     return new ModelAndView("redirect:/log/login");
	    }
	 
	 @RequestMapping(value="/login",method = RequestMethod.GET)
		public String showLogin(Model model) 
		{
			System.out.println("loging ");
			model.addAttribute("Login", new Login());
			return "Login";
		}
	 
	 @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
		public ModelAndView formsubmit(@Valid @ModelAttribute("Login")Login login, BindingResult br, Model model)
		{
			System.out.println("checking");
			ModelAndView view = new ModelAndView("Login");
			if (!br.hasFieldErrors()) 
			{
				if (!implDao.authenticateUser(login)) {
					br.addError(new ObjectError("err", "Invalid Credentials"));
					
				} 
				else 
				{
					
					view.setViewName("redirect:/p/home");
				}
			}
			return view;
		}

}
