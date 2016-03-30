package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoBean;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;

public class FindCategory extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@EJB
	private CategoryDaoLocal categoryDao;
	
	@EJB
	private EbookDaoLocal ebookDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String catId = request.getParameter("categorySelect");
		System.out.println(catId);
		

		if ((catId != null) && (!catId.equals(""))) {
			request.setAttribute("category", categoryDao.findBy(Integer.parseInt(catId)));

			getServletContext().getRequestDispatcher("/izmenaAutomobila.jsp").forward(request, response);
		}
		request.setAttribute("ebooks", ebookDao.fin;
		
		getServletContext().getRequestDispatcher("/listaVozila.jsp").forward(request, response);
		
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
