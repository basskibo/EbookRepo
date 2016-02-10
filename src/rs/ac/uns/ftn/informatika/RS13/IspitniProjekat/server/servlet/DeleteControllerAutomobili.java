package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;


public class DeleteControllerAutomobili extends HttpServlet {
	
	private static final long serialVersionUID = -6495686002669396L;
	private static Logger log = Logger.getLogger(DeleteControllerAutomobili.class);
	
	@EJB
	private EbookDaoLocal automobilDao;
	
	@EJB
	private CategoryDaoLocal proizvodjacDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	/*		request.setAttribute("automobili", automobilDao.findAll());
			request.setAttribute("proizvodjaci", proizvodjacDao.findAll());
			try{
				String automobilId = null;
				automobilId = request.getParameter("automobilId");
				Ebook automobil = automobilDao.findById(Integer.parseInt(automobilId));
				automobilDao.remove(automobil);
				
				getServletContext().getRequestDispatcher("/PrepareCreateControllAutomobil").forward(request, response);
				
			}catch (ServletException e) {
				log.error(e);
				throw e;
			} catch (IOException e) {
				log.error(e);
				throw e;
			}*/
	}
	
	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
