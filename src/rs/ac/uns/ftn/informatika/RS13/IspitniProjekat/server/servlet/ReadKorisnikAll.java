package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class ReadKorisnikAll extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2763316250550254075L;
	private static Logger log = Logger.getLogger(ReadKorisnikAll.class);
	
	@EJB
	private UserDaoLocal korisnikDao;
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("korisnici", korisnikDao.findAll());
	
		getServletContext().getRequestDispatcher("/allUsers.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
