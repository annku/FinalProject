package pl.coderslab.controller;


import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Parent;
import pl.coderslab.repository.ParentRepository;

@Controller

public class HomeController extends SessionedController{

	
	@Autowired
	ParentRepository repoParent;
	
	@RequestMapping("/mainSite")

	public String mainsite() {
		
		return "mainSite" ;
	}
	/*
	 * action returns site for user-parent
	 */
	@RequestMapping("/hello")
	public String hello() {
		return "hello";
	}
	/*
	 * action returns site with contact
	 */
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	/*
	 * action returns form to register user-parent
	 */
	@RequestMapping("/parent")
	public String register(Model m) {
		Parent parent=new Parent();
		m.addAttribute("parent", parent);
		return "parent";
	}

	/*
	 * action adding user-parent to database
	 */
	@PostMapping("/parent")
	public String registerPost(Model m, @Valid Parent parent, BindingResult result) {

		if (result.hasErrors()) {
			return "parent";
		}
		if(repoParent.findByLogin(parent.getLogin())!=null) {
			m.addAttribute("msg","Ten login jest zajęty");
			
			return "parent";
		}
		this.repoParent.save(parent);
		return "hello";
	}
	
	
}

