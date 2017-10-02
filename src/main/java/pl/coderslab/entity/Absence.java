package pl.coderslab.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;



@Entity
public class Absence {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;
	@ManyToOne
	@NotNull
	private Child child;
	@Future(message = "Podaj przyszłą datę")
	@NotNull(message = "Podaj datę")
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date date;
	@Length(max=100)
	private String message;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Absence [Id=" + Id + ", child=" + child + ", message=" + message + "]";
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public Child getChild() {
		return child;
	}
	public void setChild(Child child) {
		this.child = child;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
