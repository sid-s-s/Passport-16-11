package passport;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/p")
public class FormController {

	private Logger logger = Logger.getLogger(FormController.class);

	@Autowired
	private PassportDao passportDao;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		logger.info("Home Page");
		return "Index";

	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		logger.info("About Page");
		return "about";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "Contact";
	}

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String show(Map<String, Object> model) {
		Passport p = new Passport();
		model.put("appForm", p);
		return "Application";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView insert(@Valid @ModelAttribute("appForm") Passport p) {
		try {
		passportDao.insert(p);
		logger.info("Inserting");
		}
		catch(Exception e) {
			logger.error("Problem with inserting");
		}
		return new ModelAndView("redirect:/p/view");
	}
	
	@RequestMapping(value = "/view", method=RequestMethod.GET)
	public String viewId(ModelMap model)
	{
		List<Passport> ps= passportDao.viewId();
		model.addAttribute("view",ps);
		return "Success";
		
	}

}
