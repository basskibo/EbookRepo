package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;

public class ReadControllerKomentari extends HttpServlet {
	

	private static final long serialVersionUID = -123124111112L;
	private static Logger log = Logger.getLogger(ReadControllerKomentari.class);
	
	@EJB
	private LanguageDaoLocal komentarDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			String automobilId = null;
			automobilId = request.getParameter("automobilId");
			System.out.println(request.getParameter("automobilId"));
			request.setAttribute("komentari", komentarDao.findById(Integer.parseInt(automobilId)));
			
			getServletContext().getRequestDispatcher("/noviKomentar.jsp").forward(request, response);
			
		}catch (ServletException e) {
			log.error(e);
			throw e;
		} catch (IOException e) {
			log.error(e);
			throw e;
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
