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
	MemberJbdcDao dao;

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
			@RequestParam("email") String email, @RequestParam("pn") String pn, @RequestParam("pass") String pass,
			@RequestParam("gender") String gender, @RequestParam("date") String date, @RequestParam("description") String description) {
		Member newMember = new Member(fName, lName, pn, email, pass, date, gender, description);
		dao.addMember(fName, lName, pn, email, pass, date, gender, description);
		return new ModelAndView("adduser", "nM", "Hello " + newMember.getFirstName());
	}
	@RequestMapping("/member")
	public ModelAndView memberPage() {
		
		return new ModelAndView("memberlist", "member", dao.findAllMembers());
	}
}
