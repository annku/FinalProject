package pl.coderslab.controller;

import java.util.ArrayList;
import java.util.Arrays;
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

import pl.coderslab.entity.Activity;
import pl.coderslab.entity.Child;
import pl.coderslab.entity.ChildActivity;
import pl.coderslab.repository.ActivityRepository;
import pl.coderslab.repository.ChildActivityRepository;
import pl.coderslab.repository.ChildRepository;

@Controller

public class ActivityController {

	@Autowired
	ActivityRepository repoActivity;
	@Autowired
	ChildActivityRepository repoChildActivity;
	@Autowired
	ChildRepository repoChild;
	
	/*
	 * action return form to adding new activity 
	 */
	@RequestMapping("/activity")
	public String addActivity(Model m) {
		Activity activity = new Activity();
		m.addAttribute("activity", activity);
		return "activity";
	}

	/*
	 * action adds activity do database
	 */
	@PostMapping("/activity")
	public String addActivity(@Valid Activity activity, BindingResult result) {

		if (result.hasErrors()) {
			return "activity";
		}
		this.repoActivity.save(activity);
		return "redirect:/teacher";
	}
	/*
	 * action shows list of all activities for user-parent
	 */
	@RequestMapping("/showActivity")
	public String showActivities(Model m) {
		
		return "showActivity";
	}
	/*
	 * action shows list of all activities for user-teacher
	 */
	@RequestMapping("/showActivityTeacher")
	public String showActivitiesTeacher(Model m) {
		
		return "showActivityTeacher";
	}
	/*
	 * action return form with activity to edit
	 */
	@RequestMapping("/editAct/{id}")
	public String edit(@PathVariable long id, Model model) {
		Activity activity = repoActivity.getOne(id);
		model.addAttribute(activity);

		return "activityEdit";
	}
	/*
	 * action saves edited activity do database
	 */
	@PostMapping("/editAct/{id}")
	public String editPost(@Valid @ModelAttribute Activity activity, BindingResult result) {

		if (result.hasErrors()) {
			return "activityEdit";
		}
		this.repoActivity.save(activity);
		return "redirect:/showActivityTeacher";
	}
	/*
	 * action delete activity from database
	 */
	@RequestMapping("/deleteAct/{id}")
	public String remove(@PathVariable Long id) {

		this.repoActivity.delete(repoActivity.getOne(id));
		return "redirect:/showActivityTeacher";
	}



	@ModelAttribute("activities")
	public List<Activity> addActivity() {
		List<Activity>activities=repoActivity.findAll();
		return activities;
	}
	
	/*
	 * action returns list of children enrolled to activity
	 */
	@RequestMapping("/enrolledChildren/{id}")
	public String showEnrolledChildren(Model m,@PathVariable long id) {
		List<ChildActivity> childActivity=repoChildActivity.findByActivityId(id);
		List<Child>children=new ArrayList<Child>();
		for(int i=0;i<childActivity.size();i++) {
		Child child=childActivity.get(i).getChild();
		children.add(child);
		}
		m.addAttribute("children", children);
		return "enrolledChildren";
	}
	/*
	 * action returns activities list of specified child 
	 */
	@RequestMapping("/childActivities/{id}")
	public String showChildActivities(Model m,@PathVariable long id) {
		List<ChildActivity> childActivity=repoChildActivity.findByChildId(id);
		List<Activity>activities=new ArrayList<Activity>();
		for(int i=0;i<childActivity.size();i++) {
		Activity activity=childActivity.get(i).getActivity();
		activities.add(activity);
		}
		m.addAttribute("activities", activities);
		Child child=repoChild.getOne(id);
		m.addAttribute(child)
;		return "childActivities";
	}
	

//	@ModelAttribute("children")
//	public List<Child> getChildren() {
//		List<Child> children = this.repoChild.findAll();
//		return children;
//	}
}
