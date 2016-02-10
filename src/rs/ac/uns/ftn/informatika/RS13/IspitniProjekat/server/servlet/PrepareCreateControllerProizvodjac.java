package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class PrepareCreateControllerProizvodjac extends HttpServlet {
	
	private static final long serialVersionUID = -123124111112L;
	private static Logger log = Logger.getLogger(PrepareCreateControllerProizvodjac.class);
	
	@EJB
	private CategoryDaoLocal proizvodjacDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("proizvodjaci", proizvodjacDao.findAll());
		
		getServletContext().getRequestDispatcher("/urediProizvodjace.jsp").forward(request, response);
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
