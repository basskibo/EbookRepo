package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class PrepareUpdateUser2 extends HttpServlet{
	@EJB
	private UserDaoLocal korisnikDao;
	
	private static final long serialVersionUID = 10693418940010096L;
	
	private static Logger log = Logger.getLogger(PrepareUpdateUser2.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userid= null;
		User korisnik = null;
		userid = request.getParameter("userID");
		System.out.println("id: "+userid);
		System.out.println("pronadjen: "+ korisnikDao.findById(Integer.parseInt(userid)).getUsername());
		request.setAttribute("user", korisnikDao.findById(Integer.parseInt(userid)));
		getServletContext().getRequestDispatcher("/updateData2.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

