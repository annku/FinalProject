package pl.coderslab.controller;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pl.coderslab.entity.Absence;
import pl.coderslab.entity.Child;
import pl.coderslab.entity.Parent;
import pl.coderslab.repository.AbsenceRepository;
import pl.coderslab.repository.ChildRepository;

@Controller

public class AbsenceController extends SessionedController {

	@Autowired
	AbsenceRepository repoAbsence;
	@Autowired
	ChildRepository repoChild;

	/*
	 * action returns form to adding new absence
	 */
	@RequestMapping("/absence")
	public String register(Model m) {
		Absence absence = new Absence();
		m.addAttribute("absence", absence);
		if (session().getAttribute("parent") != null) {
			Parent parent = (Parent) session().getAttribute("parent");
			List<Child> children = repoChild.findByParentId(parent.getId());
			m.addAttribute("children", children);
			return "absence";
		} else {
			return "redirect:/login";
		}
	}

	/*
	 * adding absence to database
	 */
	@PostMapping("/absence")
	public String registerPost(@Valid Absence absence, BindingResult result, Model m) {
		
		if(result.hasErrors() ) {
			Parent parent = (Parent) session().getAttribute("parent");
			List<Child> children = repoChild.findByParentId(parent.getId());
			m.addAttribute("children", children);
			return "absence";
		}
		this.repoAbsence.save(absence);
		return "redirect:/hello";
	}
	
	/*
	 * action returns form to determine start and end dates of the range  we want check absences
	 */
	@RequestMapping("/childAbsences/{id}")
	public String absences(@PathVariable long id, Model model) {
		Child child=repoChild.getOne(id);
		model.addAttribute(child);
		return "childAbsences";
	}
	/*
	 * action returns absences of specified child
	 */
	@PostMapping("/childAbsences/{id}")
	public String getAbsences(@RequestParam Date startDate,@RequestParam Date endDate,@PathVariable long id,Model m) {
		Child child=repoChild.getOne(id);
		List<Absence> absences=repoAbsence.findByChildIdWhereDateBetweenStartAndEnd(id,startDate,endDate);
		m.addAttribute(child);
		m.addAttribute("absences",absences);
		return "absencesList";
	}

}
