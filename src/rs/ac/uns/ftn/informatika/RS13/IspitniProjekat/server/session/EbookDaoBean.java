package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import javax.ejb.Local;
import javax.ejb.Stateless;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;

@Stateless
@Local(EbookDaoLocal.class)
public class EbookDaoBean extends GenericDaoBean<Ebook, Integer> implements EbookDaoLocal {
	

	
	/*public Ebook findAutomobilByProizvodjac(Category proizvodjac){
		Query q = em.createNamedQuery("findAutomobilByProizvodjac");
		q.setParameter("proizvodjacId", proizvodjac.getPrizvodjacID());
		q.setParameter("naziv", proizvodjac.getNazivProizvodjaca());
		Ebook result = (Ebook) q.getSingleResult();
		return result;
	}

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
