package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class PrepareUpdateCategory extends HttpServlet {

	@EJB
	private CategoryDaoLocal categoryDao;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		try{
			String catId =null;
			catId = request.getParameter("category_id");
			Category cat = categoryDao.findById(Integer.parseInt(catId));
			request.setAttribute("category", cat);
			getServletContext().getRequestDispatcher("/updateCategory.jsp").forward(request, response);
			
			
			
		}catch(ServletException e){
			throw e;
		}catch (IOException e) {
			// TODO: handle exception
			throw e;
		}
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
