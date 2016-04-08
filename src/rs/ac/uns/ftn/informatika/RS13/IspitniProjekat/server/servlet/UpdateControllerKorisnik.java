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
		
		try{
			
			String korisnikId = null;
			String imeKorisnika = null;
			String prezimeKorisnika = null;
			String korisnickoImeKorisnika = null;
			String tipKorisnika = null;
			String kat = null;
			
			korisnikId = request.getParameter("userID");
			
			if((request.getParameter("fName")!=null)&&(!"".equals(request.getParameter("fName")))){
				imeKorisnika = request.getParameter("fName");
			}
			
			if((request.getParameter("lName")!=null)&&(!"".equals(request.getParameter("lName")))){
				prezimeKorisnika = request.getParameter("lName");
			}
			if((request.getParameter("username")!=null)&&(!"".equals(request.getParameter("username")))){
				korisnickoImeKorisnika = request.getParameter("username");
			}
			if((request.getParameter("type")!=null)&&(!"".equals(request.getParameter("type")))){
				tipKorisnika = request.getParameter("type");
			}
			if((request.getParameter("cat")!=null)&&(!"".equals(request.getParameter("cat")))){
				kat = request.getParameter("cat");
			}
			
			if((korisnikId != null) && (!korisnikId.equals(""))){
				User korisnik = new User();
				korisnik.setUserID(new Integer(korisnikId));
				

				if(imeKorisnika != null)
					korisnik.setFirstName(imeKorisnika);
				
				if(prezimeKorisnika != null)
					korisnik.setLastName(prezimeKorisnika);
				
				if(korisnickoImeKorisnika != null)
					korisnik.setUsername(korisnickoImeKorisnika);
				
				if(tipKorisnika != null)
					korisnik.setType(tipKorisnika);
				
				if(kat != null)
					korisnik.setCategory(null);
				
			korisnikDao.merge(korisnik);	
			}
			response.sendRedirect(response.encodeURL("./uspesno.jsp"));
			
		}catch (IOException e) {
			response.sendRedirect(response.encodeURL("./wrong.jsp"));

			log.error(e);
			throw e;
		}
	}
	
	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
