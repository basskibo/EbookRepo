package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoBean;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class ReadControllerEbooks extends HttpServlet {

	private static final long serialVersionUID = -6820366488786163882L;
	
	private static Logger log = Logger.getLogger(ReadControllerEbooks.class);
	
	@EJB
	private EbookDaoLocal ebookDao;
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	@EJB
	private LanguageDaoLocal languageDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			request.setAttribute("ebooks", ebookDao.findAll());
			request.setAttribute("category", categoryDao.findAll());
			request.setAttribute("languages", languageDao.findAll());
			getServletContext().getRequestDispatcher("/listEbooks.jsp").forward(request, response);
		
		}

	protected void doPost(HttpServletRequest request, 	HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
