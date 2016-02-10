package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import javax.ejb.Local;
import javax.ejb.Stateless;


import javax.persistence.Query;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;


@Stateless
@Local(CategoryDaoLocal.class)
public class CategoryDaoBean extends GenericDaoBean<Category, Integer> {
	
	public Category findAll(String orderClause){
		Query q = em.createNamedQuery("findAllCategory");
		q.setParameter("orderClause", orderClause);
		Category result = (Category) q.getSingleResult();
		return result;
	}

}
