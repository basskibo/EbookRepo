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
@Table(name ="language")
@NamedQuery(name="findAllLanguages", query="SELECT a from language order by :orderClause")

public class Language implements Serializable{
	
	private static final long serialVersionUID = -182666233767L;
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "language_id", unique = true, nullable = false)
	private Integer languageID;
	
	@Column(name = "name", unique = false, nullable = false)
	private String name;
	
	@OneToMany(cascade = { ALL }, fetch = LAZY, mappedBy = "language")
	private Set<Ebook> ebooks = new HashSet<Ebook>();
	

	


	public Language() {
		super();
	}

	public Language(Integer language,String name,Set<Ebook> ebook) {
		super();
		this.languageID = language;
		this.name = name;
		this.ebooks = ebook;
	}

	public Integer getLanguageID() {
		return languageID;
	}

	public void setLanguageID(Integer languageID) {
		this.languageID = languageID;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
}
