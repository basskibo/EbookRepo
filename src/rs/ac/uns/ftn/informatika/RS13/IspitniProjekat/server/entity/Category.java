package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.FetchType.LAZY;
import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity 
@Table(name = "category")
@NamedQuery(name="findAllCategory", query="SELECT a from category order by :orderClause")
public class Category implements Serializable {
	
	private static final long serialVersionUID = 127707597866678445L;
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "category_id", unique = true, nullable = false)
	private Integer categoryID;
	
	@Column(name = "name", unique= true, nullable = false, length=40)
	private String name;
	
	@OneToMany(cascade = { ALL }, fetch = LAZY, mappedBy = "category")
	private Set<Ebook> ebooks = new HashSet<Ebook>();
	
	@OneToMany(cascade = { ALL }, fetch = LAZY, mappedBy = "category")
	private Set<User> users = new HashSet<User>();
	
	

	public void addEbook(Ebook v) {
		if (v.getCategory() != null)
			v.getCategory().getEbooks().remove(v);
		v.setCategory(this);
		ebooks.add(v);
	}
	
	public void removeEbooks(Ebook v) {
		v.setCategory(null);
		ebooks.remove(v);
	}
	
	
	public void addUser(User korisnik){
		if(korisnik.getCategory()!= null)
			korisnik.getCategory().getUsers().remove(korisnik);
		korisnik.setCategory(null);
		users.add(korisnik);
	}
	
	public void removeKorisnik(User korisnik){
		korisnik.setCategory(null);
		users.remove(korisnik);
	}

	


	public Integer getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(Integer categoryID) {
		this.categoryID = categoryID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Ebook> getEbooks() {
		return ebooks;
	}

	public void setEbooks(Set<Ebook> ebooks) {
		this.ebooks = ebooks;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Category(Integer categoryID, String name) {
		super();
		this.categoryID = categoryID;
		this.name = name;
	}
	
	public Category(){
		super();
	}

}
