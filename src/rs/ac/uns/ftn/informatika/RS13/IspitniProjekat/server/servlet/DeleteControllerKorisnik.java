package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class DeleteControllerKorisnik extends HttpServlet {
	
	private static final long serialVersionUID = -6495686002669396L;
	private static Logger log = Logger.getLogger(DeleteControllerKorisnik.class);
	
	@EJB 
	private UserDaoLocal korisnikDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		try{
			String userid = null;
			userid = request.getParameter("userID");
			System.out.println(request.getParameter("userID"));
			User korisnik = korisnikDao.findById(Integer.parseInt(userid));
			System.out.println(korisnik.getUserID());
			korisnikDao.remove(korisnik);
			
			getServletContext().getRequestDispatcher("/PrepareCreateControllerKorisnik").forward(request, response);
			
		}catch (ServletException e) {
			log.error(e);
			throw e;
		} catch (IOException e) {
			log.error(e);
			throw e;
		}
	}
	
	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
}
