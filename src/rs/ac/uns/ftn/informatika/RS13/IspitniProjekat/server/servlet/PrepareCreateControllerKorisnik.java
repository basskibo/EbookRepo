package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class PrepareCreateControllerKorisnik extends HttpServlet {

	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(PrepareCreateControllerKorisnik.class);
	
	@EJB
	private UserDaoLocal korisnikDao;
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("users", korisnikDao.findAll());
		request.setAttribute("category", categoryDao.findAll());
		getServletContext().getRequestDispatcher("/newUser.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
