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

public class PrepareCreateControllAutomobil extends HttpServlet {

	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(PrepareCreateControllAutomobil.class);
	
	@EJB
	private EbookDaoLocal ebookDao;
	
	@EJB 
	private CategoryDaoLocal categoryDao;
	
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("ebooks", ebookDao.findAll());
/*		request.setAttribute("categories", categoryDao.findAll());
*/		
		getServletContext().getRequestDispatcher("/urediAutomobile.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
