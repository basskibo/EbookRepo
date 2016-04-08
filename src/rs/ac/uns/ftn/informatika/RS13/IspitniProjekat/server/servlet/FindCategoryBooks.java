package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;

public class FindCategoryBooks extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@EJB
	private CategoryDaoLocal categoryDao;
	
	@EJB
	private EbookDaoLocal ebookDao;
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String type = null;
			Integer s = null;
			
			System.out.println("usao u get findCategoryBook");
			type = request.getParameter("category_id");

			List<Category> cats = categoryDao.findAll();

			System.out.println("type: "+type);

			for(int i = 0 ; i< cats.size(); i++){
				if(cats.get(i).getCategoryID().equals(Integer.parseInt(type))){
					s = cats.get(i).getCategoryID();
					System.out.println("s je: "+ s);

				}
			}
			System.out.println("s2: " +s);
			request.setAttribute("ebooks", ebookDao.findAll());
			request.setAttribute("category", categoryDao.findById(s));

			getServletContext().getRequestDispatcher("/ebookByCategory.jsp").forward(request, response);
			}catch(IOException e){
				e.printStackTrace();
			}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
