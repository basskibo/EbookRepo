package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;


public class DeleteControllerEbook extends HttpServlet {
	
	private static final long serialVersionUID = -6495686002669396L;
	private static Logger log = Logger.getLogger(DeleteControllerEbook.class);
	
	@EJB
	private EbookDaoLocal ebookDao;
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String ebookId = null;
			ebookId = request.getParameter("ebook_id");
			Ebook ebook = ebookDao.findById(Integer.parseInt(ebookId));
			
			ebookDao.remove(ebook);
			
			getServletContext().getRequestDispatcher("/ReadControllerEbooks").forward(request, response);
			
			
			
		}catch(ServletException e){
			throw e;
		}catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}
	}
	
	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
