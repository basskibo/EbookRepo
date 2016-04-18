package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class UpdateControllerAutomobili extends HttpServlet {
	private static final long serialVersionUID = 46764191336033321L;
	private static Logger log = Logger.getLogger(UpdateControllerAutomobili.class);
	
	@EJB
	private EbookDaoLocal ebookDao;
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	@EJB
	private LanguageDaoLocal languageDao;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("ebooks", ebookDao.findAll());
		request.setAttribute("category", categoryDao.findAll());
		request.setAttribute("language", languageDao.findAll());
		
		try{
			
			String ebookID = null;
			String title = null;
			String author = null;
			String filename = null;
			Integer year = null;
			String mimeSelect = null;
			Integer langSelect = null;
			Integer categorySelect = null;
			
			
			ebookID = request.getParameter("ebookID");
			System.out.println(request.getParameter("ebookID"));
			
			if((request.getParameter("title")!=null) && (!"".equals(request.getParameter("title")))){
				title = request.getParameter("title");
			}	
			if((request.getParameter("author")!=null) && (!"".equals(request.getParameter("author")))){
				author = request.getParameter("author");
			}
			
			if((request.getParameter("filename")!=null) && (!"".equals(request.getParameter("filename")))){
				filename = request.getParameter("filename");
			}
			
		
			
			if((request.getParameter("year")!=null) && (!"".equals(request.getParameter("year")))){
				year = new Integer(request.getParameter("year"));
			}
			
			if((request.getParameter("mimeSelect")!=null) && (!"".equals(request.getParameter("mimeSelect")))){
				mimeSelect = request.getParameter("mimeSelect").toString();
			}
			
			if((request.getParameter("langSelect")!=null) && (!"".equals(request.getParameter("langSelect")))){
				langSelect = new Integer(request.getParameter("langSelect"));
			}
			
			if((request.getParameter("categorySelect")!=null) && (!"".equals(request.getParameter("categorySelect")))){
				categorySelect = new Integer(request.getParameter("categorySelect"));
			}
			
			

			if ((ebookID != null) && (!ebookID.equals(""))) {
				Ebook ebook = new Ebook();
				ebook.setId(new Integer(ebookID));
				
				if(title != null){
					ebook.setTitle(title);
				}
				
				if(author != null){
					ebook.setAuthor(author);
				}
				
				if(filename != null){
					ebook.setFilename(filename);
				}
			
				
				if(year != null){
					ebook.setYear(year);
				}
				
				if(mimeSelect != null){

					ebook.setMime(mimeSelect);
				}
				
				if(langSelect != null){
					ebook.setLanguage(languageDao.findById(langSelect));
				}
				
				if(categorySelect != null){
					ebook.setCategory(categoryDao.findById(categorySelect));
				}
				
				ebookDao.merge(ebook);
			
			}
			getServletContext().getRequestDispatcher("/ReadControllerEbooks").forward(request, response);
			
		}catch (ServletException e){
			log.error(e);
			throw e;
		}catch (IOException e) {
			log.error(e);
			throw e;
		} 
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
