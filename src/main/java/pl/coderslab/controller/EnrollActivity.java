package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entity.Activity;
import pl.coderslab.entity.Child;
import pl.coderslab.entity.ChildActivity;
import pl.coderslab.entity.Parent;
import pl.coderslab.repository.ActivityRepository;
import pl.coderslab.repository.ChildActivityRepository;
import pl.coderslab.repository.ChildRepository;

@Controller
public class EnrollActivity extends SessionedController{
	
	@Autowired
	ChildActivityRepository repoChildActivity;
	@Autowired
	ChildRepository repoChild;
	@Autowired
	ActivityRepository repoActivity;
	/*
	 * action returns form to enroll child to activity
	 */
	@RequestMapping("/enroll")
	public String enrollToActivity(Model m) {
		ChildActivity childActivity = new ChildActivity();
		m.addAttribute("childActivity", childActivity);
		if (session().getAttribute("parent") != null) {
			Parent parent = (Parent) session().getAttribute("parent");
			List<Child> children = repoChild.findByParentId(parent.getId());
			m.addAttribute("children", children);
			return "enroll";
		}else {
			return "redirect:/login";
		}
		
	}

	/*
	 * adding child to activity
	 */
	@PostMapping("/enroll")
	public String enrollToActivity(@Valid ChildActivity childActivity, BindingResult result,Model m) {

		if (result.hasErrors()) {
			Parent parent = (Parent) session().getAttribute("parent");
			List<Child> children = repoChild.findByParentId(parent.getId());
			m.addAttribute("children", children);
		
			return "enroll";
		}
		long id1=childActivity.getChild().getId();
		long id2=childActivity.getActivity().getId();
		if(repoChildActivity.findByChildIdWhereActivityId(id1, id2)!=null){
			Parent parent = (Parent) session().getAttribute("parent");
			List<Child> children = repoChild.findByParentId(parent.getId());
			m.addAttribute("children", children);
			m.addAttribute("msg", "dziecko jest już zapisane na wybrane zajęcia dodatkowe");
			return"enroll";
		}else {
		this.repoChildActivity.save(childActivity);
		return "redirect:/hello";
		}
	}

	@ModelAttribute("activities")
	public List<Activity> getActivities() {
		List<Activity> activities = this.repoActivity.findAll();
		return activities;
	}

}
