package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;

public class DeleteControllerCategory extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	@EJB
	private EbookDaoLocal ebooksDao;
	
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			String catId =null;
			catId = request.getParameter("category_id");
			Category cat = categoryDao.findById(Integer.parseInt(catId));
	/*		Ebook book = ebooksDao.findById(Integer.parseInt(catId)); 
			cat.removeEbooks(book);
			
			*
			*Napraviti da moze da se stavi null za kategoriju knjige koja ima obrisanu kategoriju
			*I DA TO RADI!!!!
			*
			*/
			
			
			categoryDao.remove(cat);
			
			getServletContext().getRequestDispatcher("/PrepareReadControllerCategory").forward(request, response);
			
			
			
		}catch(ServletException e){
			throw e;
		}catch (IOException e) {
			// TODO: handle exception
			throw e;
		}
		
		
	}

	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
