package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import javax.ejb.EJB;
import javax.ejb.Remote;
import javax.ejb.Stateless;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Language;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;

@Stateless
@Remote(Init.class)
public class InitBean implements Init {

	@EJB
	private UserDaoLocal korisnikDAO;
	
	@EJB
	private EbookDaoLocal ebookDAO;
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	@EJB
	private LanguageDaoLocal languageDao;
	
	public void init() {
		
		
		/*Category kat0 = new Category();
		kat0.setName("All");
		kat0.setCategoryID(0);
		kat0 = categoryDao.persist(kat0);*/
		
		Category kat1 = new Category();
		kat1.setName("Fantasy");
		kat1 = categoryDao.persist(kat1);
		
		Category kat2 = new Category();
		kat2.setName("Sci-fi");
		kat2 = categoryDao.persist(kat2);
		
		Category kat3 = new Category();
		kat3.setName("Comic");
		kat3 = categoryDao.persist(kat3);
		
		Category kat4 = new Category();
		kat4.setName("Mystery");
		kat4 = categoryDao.persist(kat4);
		
		Category kat11 = new Category();
		kat11.setName("Drama");
		kat11 = categoryDao.persist(kat1);
		
		Category kat112 = new Category();
		kat112.setName("Romantic");
		kat112 = categoryDao.persist(kat112);
		
		User korisnik = new User("Bojan", "Jagetic", "kibo", "123","administrator");
		korisnikDAO.persist(korisnik);
		User korisnik0 = new User("Teodora", "Lepojevic", "tea", "123","administrator");
		korisnikDAO.persist(korisnik0);
		User korisnik1 = new User("Dragan", "Spancic", "gobla", "123", "administrator");
		korisnikDAO.persist(korisnik1);
		User korisnik2 = new User("Vojin", "Jovicic", "voja", "123", "subscriber",kat1);
		korisnikDAO.persist(korisnik2);
		User korisnik3 = new User("Momir", "Jokic", "moma", "123", "subscriber",kat112);
		korisnikDAO.persist(korisnik3);
		User korisnik4 = new User("Srdjan", "Radojicic", "cipi", "123", "subscriber",kat11);
		korisnikDAO.persist(korisnik4);
		
		
		
		Language l1 = new Language();
		l1.setName("English");
		languageDao.persist(l1);
		
		Language l2 = new Language();
		l2.setName("Serbian");
		languageDao.persist(l2);
		
		Language l3 = new Language();
		l3.setName("Spanish");
		languageDao.persist(l3);
		
		
		Ebook eb1 = new Ebook("Zagor", "Bonelli", "strip veseli", 1986, "Zagor strip", "pdf", l1, kat1);
		Ebook eb2 = new Ebook("Mister No", "Bonelli", "veselicetvrtak", 1989, "mrNo strip", "pdf", l3, kat1);
		Ebook eb3 = new Ebook("Star Wars", "George Lucas", "lucasart", 1989, "mrNo strip", "pdf", l3, kat2);

		
		ebookDAO.persist(eb1);
		ebookDAO.persist(eb2);
		ebookDAO.persist(eb3);

/*		Ebook automobil = new Ebook(2015, 300000, "Dizel", "Novi Sad", "kibo@mail.com", 2000, 150, "Automatik", "nema", "U dobrom stanju",model,prozivodjac);
		Ebook automobil1 = new Ebook(2014, 4200, "Dizel", "Beograd", "kibo@mail.com", 2000, 150, "Manuelni", "full", "U odlicnom stanju",model1,prozivodjac1);
		Ebook automobil3 = new Ebook(1999, 200000, "Dizel", "Novi Sad", "kibo@mail.com", 2000, 150, "Manuelni", "nema", "Garaziran",model3,prozivodjac3);
		Ebook automobil4 = new Ebook(2003, 30000, "Butan", "Subotica", "mare@mail.com", 3000, 150, "Manuelni", "nema", "Fale felne",model4,prozivodjac2);
		Ebook automobil5 = new Ebook(2002, 245000, "Gas", "Indjija", "pera@mail.com", 2500, 1520, "Automatik", "full", "Svecice u kvaru",model5,prozivodjac2);
		Ebook automobil6 = new Ebook(2007, 245000, "Gas", "Novi Sad", "pera@mail.com", 4000, 1520, "Manuelni", "nema", "Svecice u kvaru",model6,prozivodjac3);

		
		automobilDAO.persist(automobil);
		automobilDAO.persist(automobil1);
		automobilDAO.persist(automobil3);
		automobilDAO.persist(automobil4);
		automobilDAO.persist(automobil5);
		automobilDAO.persist(automobil6);*/

		
	
		

	}
}
