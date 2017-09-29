package pl.coderslab.invoicemethods;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Hibernate;

import pl.coderslab.entity.Absence;
import pl.coderslab.entity.Activity;
import pl.coderslab.entity.Child;
import pl.coderslab.entity.ChildActivity;
import pl.coderslab.entity.Invoice;
import pl.coderslab.repository.AbsenceRepository;
import pl.coderslab.repository.ActivityRepository;
import pl.coderslab.repository.ChildActivityRepository;


public class InvoiceCount {

	public static Invoice getInvoice(Date startDate, Date endDate, List<Child>children, AbsenceRepository repoAbsence, ActivityRepository repoActivity, ChildActivityRepository repoChildActivity,Invoice invoice) {
	int daysChild = WorkingDays.getWorkingDaysBetweenTwoDates(startDate, endDate) * children.size();
	int activityCost = 0;
	List<Absence> absences =new ArrayList<>();
	
	for (int i = 0; i < children.size(); i++) {
		Long childId = children.get(i).getId();
//		Hibernate.initialize(children.get(i).getAbsence());;
		List<Absence> abs = repoAbsence.findByChildId(childId);
		absences = absencesBetweenDates(startDate, endDate,abs);
		daysChild-=absences.size();
		List<Activity> list = repoActivity.findByChildrenId(childId);
		activityCost +=activityCost(list,repoChildActivity,startDate,endDate) ;
	}
	int endSum = daysChild * 10 + activityCost;
	invoice.setAbsences(absences);
	invoice.setSum(endSum);
	
	return invoice;
	}
	/*
	 * method return list of absences between two dates
	 */
	public static List<Absence> absencesBetweenDates(Date startDate, Date endDate,List<Absence> abs) {
		List<Absence> absences = new ArrayList<Absence>();
		for (int k = 0; k < abs.size(); k++) {
			endDate = new Date(endDate.getTime() + (1000 * 60 * 60 * 24));
			startDate = new Date(startDate.getTime() - (1000 * 60 * 60 * 24));

			if (abs.get(k).getDate().after(startDate) && abs.get(k).getDate().before(endDate)) {
				absences.add((abs.get(k)));
				}
		}
		return absences;
	}
	/*
	 * method returns cost for activities
	 */
	public static int activityCost(List<Activity> list,ChildActivityRepository repoChildActivity, Date startDate, Date endDate) {
		int activityCostChild = 0;
		for (int j = 0; j < list.size(); j++) {
			ChildActivity childActivity = (ChildActivity) repoChildActivity.findByActivityId((list.get(j).getId()));
			if (childActivity.getStartDate().before(startDate) && childActivity.getEndDate().after(endDate)) {
				activityCostChild += list.get(j).getPrice();
			}
		}
		return activityCostChild;
	}
}
