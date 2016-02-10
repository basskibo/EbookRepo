package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;
import java.text.ParseException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class CreateControllerKorisnik extends HttpServlet {
	
	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(CreateControllerKorisnik.class);
	
	@EJB
	private UserDaoLocal korisnikDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	/*	try{
			String ime = null;
			String prezime = null;
			String korisnickoIme = null;
			String lozinka = null;
			String lozinkaPonovo = null;
			String tipKorisnika = null;
			String proizvodjacId = null;
			

			if ((request.getParameter("ime") != null) && (!"".equals(request.getParameter("ime")))) {
				ime = request.getParameter("ime");
				
			}
			
			if ((request.getParameter("prezime") != null) && (!"".equals(request.getParameter("prezime")))) {
				prezime = request.getParameter("prezime");
			}
			
			if ((request.getParameter("korisnickoIme") != null) && (!"".equals(request.getParameter("korisnickoIme")))) {
				korisnickoIme = request.getParameter("korisnickoIme");
			}
			
			if ((request.getParameter("lozinka") != null) && (!"".equals(request.getParameter("lozinka")))) {
				lozinka = request.getParameter("lozinka");
			}
			
			if ((request.getParameter("lozinkaPonovo") != null) && (!"".equals(request.getParameter("lozinkaPonovo")))) {
				lozinkaPonovo = request.getParameter("lozinkaPonovo");
			}

				tipKorisnika = request.getParameter("tip");
			
			User korisnik = new User();
			if(lozinka!=null && lozinkaPonovo!=null && lozinka.equals(lozinkaPonovo)){
			if(ime!=null)
				korisnik.setImeKorisnika(ime);
			
			if(prezime!=null)
				korisnik.setPrezimeKorisnika(prezime);
			
			if(korisnickoIme!=null)
				korisnik.setKorisnickoImeKorisnika(korisnickoIme);
			
			
				korisnik.setLozinkaKorisnika(lozinka);
			
			korisnik.setTipKorisnika(tipKorisnika);
			korisnikDao.persist(korisnik);
			getServletContext().getRequestDispatcher("/PrepareCreateControllerKorisnik").forward(request, response);
			return;
			}else{
				getServletContext().getRequestDispatcher("/PrepareCreateControllerKorisnik").forward(request, response);
			}
			
		}catch (ServletException e) {
			log.error(e);
			throw e;
		} catch (IOException e) {
			log.error(e);
			throw e;
		}*/
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
