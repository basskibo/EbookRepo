package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "user")
@NamedQueries({
	
	@NamedQuery(name = "findKorisnikSaKorisnickimImenomILozinkom", query = "SELECT k FROM User k WHERE k.username like :username AND k.userPassword LIKE :userPassword"),
	@NamedQuery(name = "findAllUsers",query="SELECT a from User order by :orderClause")
})
public class User implements Serializable {

	private static final long serialVersionUID = 3770759786667844735L;

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_id", unique = true, nullable = false)
	private Integer userID;

	@Column(name = "firstName", unique = false, nullable = false)
	private String firstName;

	@Column(name = "lastName", unique = false, nullable = false)
	private String lastName;

	@Column(name = "username", unique = true, nullable = false)
	private String username;

	@Column(name = "userPassword", unique = false, nullable = false)
	private String userPassword;
	
	@Column(name = "type", unique = false, nullable = false)
	private String type;
	
	@ManyToOne
	@JoinColumn(name = "category_id", referencedColumnName = "category_id", nullable = true)
	private Category category;

	public User() {
		super();
	}

	public User(String imeKorisnika, String prezimeKorisnika, String username, String userPassword,String tipKorisnika,Category kategorija) {
		super();
		this.firstName = imeKorisnika;
		this.username = username;
		this.userPassword = userPassword;
		this.lastName = prezimeKorisnika;
		this.type = tipKorisnika;
		this.category = kategorija;
	}

	public User(String imeKorisnika, String prezimeKorisnika, String username, String userPassword,String tipKorisnika) {
		super();
		this.firstName = imeKorisnika;
		this.username = username;
		this.userPassword  = userPassword;
		this.lastName = prezimeKorisnika;
		this.type = tipKorisnika;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
