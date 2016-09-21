package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import org.apache.log4j.Logger;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Ebook;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Language;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.EbookDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.LanguageDaoLocal;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class CreateControllerEbook extends HttpServlet {
	
	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(CreateControllerEbook.class);
	
	@EJB
	private EbookDaoLocal ebookDAO;
	
	@EJB
	private CategoryDaoLocal categoryDAO;
	
	@EJB
	private LanguageDaoLocal languageDAO;	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("ebooks", ebookDAO.findAll());
		request.setAttribute("category", categoryDAO.findAll());
		request.setAttribute("languages", languageDAO.findAll());
		try{
			
			String title = null;
			String author = null;
			String filename = null;
			Integer year = null;
			String mime = "pdf";
			String catID = null;
			String cata = null;
			String lang = null;
			
			
			
			if((request.getParameter("title")!=null) && (!"".equals(request.getParameter("title")))){
				title = request.getParameter("title");
			}
			
			if((request.getParameter("author")!=null) && (!"".equals(request.getParameter("author")))){
				author = request.getParameter("author");
			}
			
			if((request.getParameter("filename")!=null) && (!"".equals(request.getParameter("filename")))){
				filename = request.getParameter("filename");
			}
			
			if((request.getParameter("mime")!=null) && (!"".equals(request.getParameter("mime")))){
				mime = request.getParameter("mime");
			}
			
			if((request.getParameter("year")!=null) && (!"".equals(request.getParameter("year")))){
				year = new Integer(request.getParameter("year"));
			}
			
			
//		
			if((request.getParameter("categorySelect")!=null) && (!"".equals(request.getParameter("categorySelect")))){
				catID = request.getParameter("categorySelect");
			}
			
			cata = request.getParameter("categorySelect");
			lang = request.getParameter("langSelect");

            System.out.println("category of new book:" + cata);
            System.out.println("filename of new book:" + filename);
            Ebook ebook = new Ebook();
			Category cat = new Category();
			Language l = new Language();
		
			if(cata != null){
				cat = categoryDAO.findById(Integer.parseInt(cata));
				ebook.setCategory(cat);
			}
			
			if(lang != null){
				l = languageDAO.findById(Integer.parseInt(lang));
				ebook.setLanguage(l);
			}
			
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
			
			ebook.setMime(mime);
			
			
			ebookDAO.persist(ebook);
			getServletContext().getRequestDispatcher("/ReadControllerEbooks").forward(request, response);
		
			
	} catch (ServletException e){
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
