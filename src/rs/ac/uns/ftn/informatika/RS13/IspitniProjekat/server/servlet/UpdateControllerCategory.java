package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.openjpa.lib.log.Log;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class UpdateControllerCategory extends HttpServlet {

	/**
	 * 
	 */
	@EJB
	private CategoryDaoLocal categoryDao;
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
		String catName = null;
		String catID =null;
				
		catID = request.getParameter("categoryID");
		
		if((request.getParameter("catName")!=null)&&(!"".equals(request.getParameter("catName")))){
			catName = request.getParameter("catName");
		}
		
		if((catID != null) && (!catID.equals(""))){
			Category category = new Category();
			category.setCategoryID(Integer.parseInt(catID));
			
			if(catName != null)
				category.setName(catName);
			
			categoryDao.merge(category);	
		}
		response.sendRedirect(response.encodeURL("./PrepareReadControllerCategory"));
		}catch(IOException e){
			response.sendRedirect(response.encodeURL("./wrong.jsp"));
		}
			
			
			
		}


		
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	

}
