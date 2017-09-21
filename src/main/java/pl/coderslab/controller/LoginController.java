package pl.coderslab.controller;

import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pl.coderslab.entity.Parent;
import pl.coderslab.model.LoginData;
import pl.coderslab.repository.ParentRepository;



@Controller

public class LoginController extends SessionedController{

	
	@GetMapping("/home")
	public String home(Model m) {
	if(session().getAttribute("parent")!=null) {
		m.addAttribute("msg","zalogowano");
	}return "home";
	}
	/*
	 * action invalidating session
	 */
	@GetMapping("/invalidate")
	public String unlog() {
	session().invalidate();
		return "redirect:/mainSite";
	}

	@Autowired
	ParentRepository repoParent;

	/*
	 * action returns form to log in
	 */
	@GetMapping("/login")
	public String login(Model m) {
		LoginData login = new LoginData();
		m.addAttribute("user", login);

		return "login";
	}

	/*
	 * action adds user to session
	 */
	@PostMapping("/login")
	public String loginPost(LoginData user, Model m) {
		Parent parent = this.repoParent.findByLogin(user.getLogin());
		if (parent == null) {
			LoginData login = new LoginData();
			m.addAttribute("user", login);
			m.addAttribute("msg", "Podaj poprawne dane");
			return "login";
		}

		if(parent.isPasswordCorrect(user.getPassword())) {
			
			session().setAttribute("parent", parent);
		}

		return "redirect:/mainSite";
	}

}
