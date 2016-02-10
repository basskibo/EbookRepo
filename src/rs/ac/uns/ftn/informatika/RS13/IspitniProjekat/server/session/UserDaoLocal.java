package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;

public interface UserDaoLocal extends GenericDaoLocal<User, Integer> {

	public User findKorisnikSaKorisnickimImenomILozinkom(
			String korisnickoIme, String lozinka);

}
