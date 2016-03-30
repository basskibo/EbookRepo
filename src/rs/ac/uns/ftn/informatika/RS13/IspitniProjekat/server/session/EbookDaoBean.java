package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.persistence.Query;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;

@Stateless
@Local(EbookDaoLocal.class)
public class EbookDaoBean extends GenericDaoBean<Ebook, Integer> implements EbookDaoLocal {
	

	
	public Ebook findEbookByCategory(Category cat){
		Query q = em.createNamedQuery("findAutomobilByProizvodjac");
		q.setParameter("category_id", cat.getCategoryID());
		q.setParameter("name", cat.getName());
		Ebook result = (Ebook) q.getSingleResult();
		return result;
	}
	/*
	public Ebook findAll(String orderClause){
		Query q = em.createNamedQuery("findAll");
		q.setParameter("orderClause", orderClause);
		Ebook result = (Ebook) q.getSingleResult();
		System.out.println(result.getProizvodjac().getNazivProizvodjaca());
		return result;
	}
	
	public void remove(Ebook a){
		a = em.merge(a);
		
		a.getProizvodjac().getAutomobili().remove(a);
		a.getModel().getAutomobili().remove(a);
		
		em.remove(a);
	}*/
}
