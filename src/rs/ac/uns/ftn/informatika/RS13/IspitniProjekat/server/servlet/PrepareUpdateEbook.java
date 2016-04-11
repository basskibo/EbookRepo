package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;

public class PrepareUpdateEbook extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@EJB
	private EbookDaoLocal ebookDAO;
	
	@EJB
	private CategoryDaoLocal categoryDAO;
	
	@EJB
	private LanguageDaoLocal languageDAO;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try{
			String ebookId =null;
			ebookId = req.getParameter("ebook_id");
			Ebook b = ebookDAO.findById(Integer.parseInt(ebookId));
			req.setAttribute("ebook", b);
			req.setAttribute("category", categoryDAO.findAll());
			req.setAttribute("language", languageDAO.findAll());

			getServletContext().getRequestDispatcher("/updateEbook.jsp").forward(req, resp);
			
			
			
		}catch(ServletException e){
			throw e;
		}catch (IOException e) {
			// TODO: handle exception
			throw e;
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
