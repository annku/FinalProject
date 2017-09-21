package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.coderslab.entity.Absence;
import pl.coderslab.entity.Child;
import pl.coderslab.entity.Invoice;
import pl.coderslab.entity.Parent;
import pl.coderslab.repository.AbsenceRepository;
import pl.coderslab.repository.ChildRepository;
import pl.coderslab.repository.ParentRepository;

@Controller

public class TeacherController {

	@Autowired
	ChildRepository repoChild;

	@Autowired
	ParentRepository repoParent;

	@RequestMapping("/teacher")
	public String teacher() {

		return "teacher";
	}

	/*
	 * action returns form to add child
	 */
	@RequestMapping("/child")
	public String register(Model m) {
		Child child = new Child();
		m.addAttribute("child", child);
		return "child";
	}

	/*
	 * action saves child to database
	 */
	@PostMapping("/child")
	public String registerPost(@Valid Child child, BindingResult result) {

		if (result.hasErrors()) {
			return "child";
		}
		this.repoChild.save(child);
		return "teacher";
	}

	/*
	 * action returns form to edit child saved in database
	 */
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable long id, Model model) {
		Child child = repoChild.getOne(id);
		model.addAttribute(child);

		return "childEdit";
	}

	/*
	 * action saves changes in child-record in database
	 */
	@PostMapping("/edit/{id}")
	public String editPost(@Valid @ModelAttribute Child child, BindingResult result) {

		if (result.hasErrors()) {
			return "childEdit";
		}
		this.repoChild.save(child);
		return "redirect:/childList";
	}

	/*
	 * action removes child-record in database
	 */
	@RequestMapping("/childRemove/{id}")
	public String remove(@PathVariable Long id) {

		this.repoChild.delete(repoChild.getOne(id));
		return "redirect:/childList";
	}

	@ModelAttribute("children")
	public List<Child> getChildren() {
		List<Child> children = this.repoChild.findAll();
		return children;
	}

	/*
	 * action returns list of children in database
	 */
	@RequestMapping("/childList")
	public String all() {

		return "childList";
	}

	@ModelAttribute("parents")
	public List<Parent> getParents() {
		List<Parent> parents = this.repoParent.findAll();
		return parents;
	}
	/*
	 * action removes parent from database
	 */
	@RequestMapping("/deleteParent/{id}")
	public String deleteParent(@PathVariable Long id) {

		this.repoParent.delete(repoParent.getOne(id));
		return "redirect:/parentList";
	}

}
