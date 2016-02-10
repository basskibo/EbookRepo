package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.persistence.Query;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;

@Stateless
@Local(UserDaoLocal.class)
public class UserDaoBean extends GenericDaoBean<User, Integer>
		implements UserDaoLocal {

	public User findKorisnikSaKorisnickimImenomILozinkom(
			String username, String userPassword) {
		Query q = em
				.createNamedQuery("findKorisnikSaKorisnickimImenomILozinkom");
		q.setParameter("username", username);
		q.setParameter("userPassword", userPassword);
		User result = (User) q.getSingleResult();
		return result;
	}
	
	public User findAll(String orderClause){
		Query q = em.createNamedQuery("findAllKorisnik");
		q.setParameter("orderClause", orderClause);
		User result = (User) q.getSingleResult();
		return result;
	}

}
