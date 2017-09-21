package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.Absence;
import pl.coderslab.entity.Child;
import pl.coderslab.repository.AbsenceRepository;
import pl.coderslab.repository.ChildRepository;

@Controller

public class AbsenceController {
	
	@Autowired
	AbsenceRepository repoAbsence;
	@Autowired
	ChildRepository repoChild;
	/*
	 * action returns form to adding new absence
	 */
	@RequestMapping("/absence")
	public String register(Model m) {
		Absence absence=new Absence();
		m.addAttribute("absence", absence);
		return "absence";
	}

	/*
	 * adding absence to database
	 */
	@PostMapping("/absence")
	public String registerPost(@Valid Absence absence, BindingResult result) {

		if (result.hasErrors()) {
			return "absence";
		}
		this.repoAbsence.save(absence);
		return "redirect:/hello";
	}
	/*
	 * list of all children in database
	 */
	@ModelAttribute("children")
	public List<Child> getChildren() {
		List<Child> children = this.repoChild.findAll();
		return children;
	}
	

}
