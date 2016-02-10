package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class ReadControllerModeliSolo extends HttpServlet {
	
	
	private static final long serialVersionUID = -6027465736191335460L;
	private static Logger log = Logger.getLogger(ReadControllerModeliSolo.class);
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/*		try{
			String proizvodjacId = null;
			proizvodjacId = request.getParameter("proizvodjacId");
			System.out.println(request.getParameter("proizvodjacId"));
			request.setAttribute("modeli", modelDao.findAll());

			getServletContext().getRequestDispatcher("/listaModela.jsp").forward(request, response);
			
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
