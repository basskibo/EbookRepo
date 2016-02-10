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

public class UpdateControllerKorisnik extends HttpServlet {
	
	private static final long serialVersionUID = -734547186L;
	private static Logger log = Logger.getLogger(UpdateControllerKorisnik.class);
	
	@EJB
	private UserDaoLocal korisnikDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*try{
			
			String korisnikId = null;
			String imeKorisnika = null;
			String prezimeKorisnika = null;
			String korisnickoImeKorisnika = null;
			
			korisnikId = request.getParameter("id");
			
			if((request.getParameter("ime")!=null)&&(!"".equals(request.getParameter("ime")))){
				imeKorisnika = request.getParameter("ime");
			}
			
			if((request.getParameter("prezime")!=null)&&(!"".equals(request.getParameter("prezime")))){
				prezimeKorisnika = request.getParameter("prezime");
			}
			if((request.getParameter("korIme")!=null)&&(!"".equals(request.getParameter("korIme")))){
				korisnickoImeKorisnika = request.getParameter("korIme");
			}
			
			if((korisnikId != null) && (!korisnikId.equals(""))){
				User korisnik = new User();
				korisnik.setId(new Integer(korisnikId));

				if(imeKorisnika != null)
					korisnik.setImeKorisnika(imeKorisnika);
				
				if(prezimeKorisnika != null)
					korisnik.setPrezimeKorisnika(prezimeKorisnika);
				
				if(korisnickoImeKorisnika != null)
					korisnik.setKorisnickoImeKorisnika(korisnickoImeKorisnika);	
				
			korisnikDao.merge(korisnik);	
			}
			response.sendRedirect(response.encodeURL("./uspesno.jsp"));
			
		}catch (IOException e) {
			log.error(e);
			throw e;
		}*/
	}
	
	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
