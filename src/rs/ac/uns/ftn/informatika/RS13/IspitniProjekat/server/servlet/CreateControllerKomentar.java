package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Language;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;

public class CreateControllerKomentar extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -650965913955625820L;

	@EJB
	private LanguageDaoLocal komentarDao;
	
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*try{
			String naslov = null;
			String tekst = null;
			
			

			if ((request.getParameter("naslov") != null) && (!"".equals(request.getParameter("naslov")))) {
				naslov = request.getParameter("naslov");
				
			}
			
			if ((request.getParameter("tekst") != null) && (!"".equals(request.getParameter("tekst")))) {
				tekst = request.getParameter("tekst");
			}
			
			Language komentar = new Language();
			if(naslov!= null && tekst!= null){
				komentar.setTekst(tekst);
				komentar.setNaslovKomentara(naslov);
				
			}
			
			komentarDao.persist(komentar);
			getServletContext().getRequestDispatcher("/ReadControllerAutomobili").forward(request, response);

		
			{
				getServletContext().getRequestDispatcher("/ReadControllerAutomobili").forward(request, response);
			}
		}finally{
			System.out.println("FINALLY");
		}*/
		
}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
