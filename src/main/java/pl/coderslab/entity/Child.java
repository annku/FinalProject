package pl.coderslab.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Child {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank
	private String firstname;
	@NotBlank
	private String lastname;
	
	private int age;
	@ManyToOne
	private Parent parent;
	@OneToMany
	private List<Activity> activities;
	@OneToMany
	private List<Absence> absence;
	@Transient
	private String fullname;
	
	


	public String getFullname() {
		return firstname+" "+lastname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public List<Absence> getAbsence() {
		return absence;
	}
	public void setAbsence(List<Absence> absence) {
		this.absence = absence;
	}
	public Parent getParent() {
		return parent;
	}
	public void setParent(Parent parent) {
		this.parent = parent;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public List<Activity> getActivities() {
		return activities;
	}
	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}


	@Override
	public String toString() {
		return "Child [Id=" + id + ", age=" + age + ", parent=" + parent + ", fullname=" + fullname + "]";
	}
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
