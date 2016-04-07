package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity;

import static javax.persistence.GenerationType.IDENTITY;
import static javax.persistence.CascadeType.ALL;
import static javax.persistence.FetchType.LAZY;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ebook")
@NamedQueries({
	@NamedQuery(name="findEBookByCategory", query="select b from EBook b where b.kategorija.id = :id"),
	@NamedQuery(name="findAutomobilByProizvodjac", query="SELECT a from Automobil a where a.proizvodjac.id like :proizvodjacId ORDER BY :naziv"),
	@NamedQuery(name="findAll", query="SELECT a from ebook order by :orderClause")
})
public class Ebook implements Serializable {

	private static final long serialVersionUID = 7033232793607903812L;

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ebook_id", unique = true, nullable = false)
	private Integer id;

	@Column(name = "title", unique=false, nullable=false)
	private String title;

	@Column(name = "author", unique = false, nullable=false)
	private String author;
	
	@Column(name="keywords", unique=false, nullable=true, length=15)
	private String keywords;
	
	@Column(name="year", unique=false, nullable=true)
	private Integer year;
	
	@Column(name = "filename", unique=false, nullable=true)
	private String filename;
	
	@Column(name = "mime", unique=false, nullable=true)
	private String mime;
	
	
	@ManyToOne
	@JoinColumn(name = "category_id", referencedColumnName = "category_id", unique=false)
	private Category category;
	
	@ManyToOne
	@JoinColumn(name = "language_id", referencedColumnName = "language_id", unique=false)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name = "user_id", referencedColumnName = "user_id", unique=false)
	private User user;
	

	
	public Ebook() {
		super();
	}
	
	public Ebook(String title,String author,String keywords,Integer year,String filename,String mime,Language language,Category category) {
		super();
		this.title= title;
		this.author = author;
		this.keywords = keywords;
		this.year = year;
		this.filename = filename;
		this.mime = mime;
		this.language= language;
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getMime() {
		return mime;
	}

	public void setMime(String mime) {
		this.mime = mime;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	


}
