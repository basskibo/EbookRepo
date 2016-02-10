package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class ReadControllerModeliAll extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4402776262424310278L;
	private static Logger log = Logger.getLogger(ReadControllerModeliAll.class);

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	

			getServletContext().getRequestDispatcher("/listaModela.jsp").forward(request, response);
			
	
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}
