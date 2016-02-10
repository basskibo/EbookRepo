package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.persistence.Query;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Language;


@Stateless
@Local(LanguageDaoLocal.class)
public class LanguageDaoBean extends GenericDaoBean<Language, Integer> implements LanguageDaoLocal {

/*	public void remove(Language kom){
		kom = em.merge(kom);
		kom.getAutomobil().getKomentari().remove(kom);
		em.remove(kom);
	}
	
	
	public Language findAll(String orderClause){
		Query q = em.createNamedQuery("findAllKomentar");
		q.setParameter("orderClause", orderClause);
		Language result = (Language) q.getSingleResult();
		return result;
	}*/
}
