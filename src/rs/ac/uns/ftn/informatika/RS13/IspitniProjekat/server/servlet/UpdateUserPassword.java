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

public class UpdateUserPassword extends HttpServlet {
	
	private static final long serialVersionUID = -73454137186L;
	private static Logger log = Logger.getLogger(UpdateUserPassword.class);
	
	@EJB
	private UserDaoLocal korisnikDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			
			String korisnikId=null;
			String lozinka=null;
			String novaLozinka=null;
			String novaLozinkaPonovo=null;
			
			korisnikId = request.getParameter("userID");
	
			if((request.getParameter("userPasswordOld")!=null)&&(!"".equals(request.getParameter("userPasswordOld")))){
				lozinka = request.getParameter("userPasswordOld");
			}
			
			if((request.getParameter("userPasswordNew")!=null)&&(!"".equals(request.getParameter("userPasswordNew")))){
				novaLozinka = request.getParameter("userPasswordNew");
			}
			
			if((request.getParameter("userPasswordNew2")!=null)&&(!"".equals(request.getParameter("userPasswordNew2")))){
				novaLozinkaPonovo = request.getParameter("userPasswordNew2");
			}
			
			if((korisnikId != null) && (!korisnikId.equals(""))){
				User korisnik = new User();
				String tLozinka = request.getParameter("tLozinka");
				korisnik.setUserID(new Integer(korisnikId));
				if(lozinka!=null && novaLozinka!=null && novaLozinkaPonovo!=null && 
						lozinka.equals(tLozinka) && novaLozinka.equals(novaLozinkaPonovo)){
					korisnik.setUserPassword(novaLozinka);
					korisnikDao.merge(korisnik);
					response.sendRedirect(response.encodeURL("./uspesno.jsp"));
				}
				else{
					response.sendRedirect(response.encodeURL("./updatePassword.jsp"));
				}
				
			}
		}catch (IOException e) {
			log.error(e);
			throw e;
		}
		
	}
	
	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
