package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;

public class PrepareUpdateControllAutomobili extends HttpServlet {
	
	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(PrepareUpdateControllAutomobili.class);
	
	@EJB
	private EbookDaoLocal automobilDAO;
	
	@EJB
	private CategoryDaoLocal proizvodjacDAO;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
	/*	String automobilId = request.getParameter("automobilId");
		request.setAttribute("proizvodjaci", proizvodjacDAO.findAll());
		
		if ((automobilId != null) && (!automobilId.equals(""))) {
			request.setAttribute("automobil", automobilDAO.findById(Integer.parseInt(automobilId)));
			getServletContext().getRequestDispatcher("/izmenaAutomobila.jsp").forward(request, response);
		}*/
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}
