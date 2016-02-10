package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class ReadControllerAutomobiliByProizvodjac extends HttpServlet {

	private static final long serialVersionUID = -6820366488786163882L;
	
	
	@EJB
	private EbookDaoLocal automobilDao;
	
	@EJB
	private CategoryDaoLocal proizvodjacDao;
	
	@EJB
	private LanguageDaoLocal komentarDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String automobilId = request.getParameter("prizvodjacID");
			System.out.println(automobilId);
			

			if ((automobilId != null) && (!automobilId.equals(""))) {
				request.setAttribute("proizvodjaci", proizvodjacDao.findById(Integer.parseInt(automobilId)));

				getServletContext().getRequestDispatcher("/izmenaAutomobila.jsp").forward(request, response);
			}
			request.setAttribute("automobili", automobilDao.findAll());
			request.setAttribute("komentari", komentarDao.findAll());
			
			getServletContext().getRequestDispatcher("/listaVozila.jsp").forward(request, response);
			
		}

	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
