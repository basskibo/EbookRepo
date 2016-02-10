package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

public class LogoutController extends HttpServlet {

	private static final long serialVersionUID = -9042476143848933537L;
	
	private static Logger log = Logger.getLogger(LogoutController.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect(response.encodeRedirectURL("./index.jsp"));
		
		} catch (IOException e) {
			log.error(e);
			throw e;
		}
	}

	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
