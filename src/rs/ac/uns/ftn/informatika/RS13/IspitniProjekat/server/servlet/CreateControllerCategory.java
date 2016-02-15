package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class CreateControllerCategory extends HttpServlet {

	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(CreateControllerKorisnik.class);
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String naziv = null;
			
			if ((request.getParameter("cName") != null) && (!"".equals(request.getParameter("cName")))) {
				naziv = request.getParameter("cName");
			}
			
			Category cat = new Category();
			if(naziv!=null){
				cat.setName(naziv);
			}
			
			categoryDao.persist(cat);
			getServletContext().getRequestDispatcher("/PrepareReadControllerCategory").forward(request, response);
		}catch (ServletException e) {
			log.error(e);
			throw e;
		} catch (IOException e) {
			log.error(e);
			throw e;
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
