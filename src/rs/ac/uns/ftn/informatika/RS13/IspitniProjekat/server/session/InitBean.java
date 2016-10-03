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
		
		Category kat1122 = new Category();
		kat1122.setName("Epic");
		kat1122 = categoryDao.persist(kat1122);
		
		Category kat9 = new Category();
		kat9.setName("Education");
		kat9 = categoryDao.persist(kat9);
		
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
		User korisnik4 = new User("Srdjan", "Radojicic", "cipi", "123", "subscriber",null);
		korisnikDAO.persist(korisnik4);
		User korisnik41 = new User("Marko", "Markovic", "mare", "123", "subscriber",kat9);
		korisnikDAO.persist(korisnik41);
		
		
		Language l1 = new Language();
		l1.setName("English");
		languageDao.persist(l1);
		
		Language l2 = new Language();
		l2.setName("Serbian Latin");
		languageDao.persist(l2);
		
		Language l3 = new Language();
		l3.setName("Spanish");
		languageDao.persist(l3);
		
		
		Language l4 = new Language();
		l4.setName("German");
		languageDao.persist(l4);
		
		Language l5 = new Language();
		l5.setName("Serbian Cyrilic");
		languageDao.persist(l5);
		
		Language l6 = new Language();
		l6.setName("French");
		languageDao.persist(l6);
		
		Ebook eb1 = new Ebook("Zagor", "Bonelli", "strip veseli", 1986, "Zagor strip", "pdf", l1, kat3);
		Ebook eb2 = new Ebook("Mister No", "Bonelli", "veselicetvrtak", 1989, "mrNo strip", "pdf", l3, kat3);
		Ebook eb3 = new Ebook("Star Wars", "George Lucas", "lucasart", 1987, "mrNo strip", "pdf", l3, kat2);
		Ebook eb4 = new Ebook("Java for dummies", "Some guy", "lucasart", 2010, "java", "pdf", l4, kat9);
		Ebook eb5 = new Ebook("Da Vinci's Code", "Dan Brown", "lucasart", 2005, "da_vinci", "pdf", l1, kat4);
		Ebook eb6 = new Ebook("Inferno", "Dan Brown", "lucasart", 2014, "java", "pdf", l2, kat4);
		Ebook eb7 = new Ebook("Na Drini cuprija", "Ivo Andric", "lucasart", 1945, "java", "pdf", l5, kat11);
		Ebook eb8 = new Ebook("Star Wars II", "George Lucas", "lucasart", 2002, "mrNo strip", "pdf", l1, kat2);
		Ebook eb9 = new Ebook("Star Wars III", "George Lucas", "lucasart", 2003, "mrNo strip", "pdf", l1, kat2);

		
		ebookDAO.persist(eb1);
		ebookDAO.persist(eb2);
		ebookDAO.persist(eb3);
		ebookDAO.persist(eb4);
		ebookDAO.persist(eb5);
		ebookDAO.persist(eb6);
		ebookDAO.persist(eb7);
		ebookDAO.persist(eb8);
		ebookDAO.persist(eb9);

		
	
		

	}
}
