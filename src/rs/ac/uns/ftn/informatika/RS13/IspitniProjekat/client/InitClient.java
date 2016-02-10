package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.client;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.Init;

public class InitClient {

	public static void main(String args[]) {
		
		try {
			Context ctx = new InitialContext();
			Init init = (Init) ctx.lookup("InitBeanRemote");
			init.init();
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
}
