package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class ReadControllerRegistrujSe extends HttpServlet {
	
	private static final long serialVersionUID = -6820366488786163882L;
	
	private static Logger log = Logger.getLogger(ReadControllerIndex.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			getServletContext().getRequestDispatcher("/registrujSe.jsp").forward(request, response);
		
		}

	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
