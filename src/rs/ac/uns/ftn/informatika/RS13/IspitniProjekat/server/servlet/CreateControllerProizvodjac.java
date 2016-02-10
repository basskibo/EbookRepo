package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class CreateControllerProizvodjac extends HttpServlet {

	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(CreateControllerKorisnik.class);
	
	@EJB
	private CategoryDaoLocal proizvodjacDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	try{
			String naziv = null;
			
			if ((request.getParameter("naziv") != null) && (!"".equals(request.getParameter("naziv")))) {
				naziv = request.getParameter("naziv");
			}
			
			Category proizvodjac = new Category();
			if(naziv!=null){
				proizvodjac.setNazivProizvodjaca(naziv);
			}
			
			proizvodjacDao.persist(proizvodjac);
			getServletContext().getRequestDispatcher("/PrepareCreateControllerProizvodjac").forward(request, response);
		}catch (ServletException e) {
			log.error(e);
			throw e;
		} catch (IOException e) {
			log.error(e);
			throw e;
		}*/
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
