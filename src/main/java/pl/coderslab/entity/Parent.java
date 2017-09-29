package pl.coderslab.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;



import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.mindrot.jbcrypt.BCrypt;


@Entity
@Table(uniqueConstraints={@UniqueConstraint(columnNames={"login"})})
public class Parent {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank
	private String firstname;
	@NotBlank
	private String lastname;
	@NotBlank
	@Column(unique = true)
	@Length(min=3)
	private String login;
	@NotBlank(message = "Password may not be empty")
//	@Length(max=2000, message = "Password may not be longer than 2000 characters")
	private String password;
	@OneToMany(mappedBy="parent")
	private List<Child> child;
	@Transient
	private String fullname;
	@OneToMany(mappedBy="parent")
	private List<Invoice>invoices;
	
	
	
	public List<Invoice> getInvoices() {
		return invoices;
	}
	public void setInvoices(List<Invoice> invoices) {
		this.invoices = invoices;
	}
	@Override
	public String toString() {
		return "Parent [id=" + id  + ", fullname=" + fullname + "]";
	}
	public List<Child> getChild() {
		return child;
	}
	public void setChild(List<Child> child) {
		this.child = child;
	}
	public String getFullname() {
		return firstname+" "+lastname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Parent() {
		
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = BCrypt.hashpw(password, BCrypt.gensalt()) ;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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


	public Parent(String firstname, String lastname) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
	}
	
	public Boolean isPasswordCorrect(String password) {
		return BCrypt.checkpw(password, this.password);
	}

}
