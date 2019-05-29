package co.grandcircus.Lab22_May2019;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LabController {
	@Autowired
	private Member member;

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		return mv;

	}

	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}

	@PostMapping("/adduser")
	public ModelAndView formDetails(@RequestParam("first") String fName, @RequestParam("last") String lName,
			@RequestParam("email") String email, @RequestParam("pn") String pn, @RequestParam("pass") String pass) {
		Member newMember = new Member(fName, lName, pn, email, pass);
		return new ModelAndView("adduser", "nM", "Hello " + newMember.getFirstName());
	}
}
