package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.persistence.NoResultException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class LoginController extends HttpServlet {

	private static final long serialVersionUID = -7345471861052209628L;
	
	private static Logger log = Logger.getLogger(LoginController.class);

	@EJB
	private UserDaoLocal korisnikDao;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String username = request.getParameter("username");
			String userPassword = request.getParameter("userPassword");
			
			System.out.println(username + " " + userPassword);
			
			if ((username == null) || (username.equals("")) || (userPassword == null) || (userPassword.equals(""))) {
				response.sendRedirect(response.encodeRedirectURL("./login.jsp"));
				return;
			}
			
			User korisnik = korisnikDao.findKorisnikSaKorisnickimImenomILozinkom(username, userPassword);
			System.out.println(korisnik.getFirstName() + " " + korisnik.getLastName());
			if (korisnik != null) {	
				HttpSession session = request.getSession(true);
				session.setAttribute("admin", korisnik);
				session.setAttribute("adminName", korisnik.getFirstName());
				if(korisnik.getType().equalsIgnoreCase("moderator")){
					session.setAttribute("moderator", true);
				}
				if(korisnik.getType().equalsIgnoreCase("administrator")){
					session.setAttribute("administrator", true);
				}
				System.out.println("User with username:" + korisnik.getUsername() + " has logged in.");
				getServletContext().getRequestDispatcher("/ReadControllerIndex").forward(request, response);
			}
			
		} catch (EJBException e) {
			if (e.getCause().getClass().equals(NoResultException.class)) {
				System.out.println("Wrong username or passwrod.Please try again.");
				response.sendRedirect(response.encodeURL("./wrong.jsp"));
			} else {
				throw e;
			}
		} catch (ServletException e) {
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
