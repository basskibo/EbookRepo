package rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.servlet;

import java.io.IOException;
import java.text.ParseException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Category;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.User;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;
import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.UserDaoLocal;

public class CreateControllerKorisnik extends HttpServlet {
	
	private static final long serialVersionUID = -123124112L;
	private static Logger log = Logger.getLogger(CreateControllerKorisnik.class);
	
	@EJB
	private UserDaoLocal korisnikDao;
	
	@EJB
	private CategoryDaoLocal categoryDao;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			String fName = null;
			String lName = null;
			String username = null;
			String userPassword = null;
			String userPassword2 = null;
			String type = null;
			String cat = null;
			

			if ((request.getParameter("fName") != null) && (!"".equals(request.getParameter("fName")))) {
				fName = request.getParameter("fName");
				
			}
			
			if ((request.getParameter("lName") != null) && (!"".equals(request.getParameter("lName")))) {
				lName = request.getParameter("lName");
			}
			
			if ((request.getParameter("username") != null) && (!"".equals(request.getParameter("username")))) {
				username = request.getParameter("username");
			}
			
			if ((request.getParameter("userPassword") != null) && (!"".equals(request.getParameter("userPassword")))) {
				userPassword = request.getParameter("userPassword");
			}
			
			if ((request.getParameter("userPassword2") != null) && (!"".equals(request.getParameter("userPassword2")))) {
				userPassword2 = request.getParameter("userPassword2");
			}

			type = request.getParameter("type");
			
			
			
			

			User korisnik = new User();
			if(userPassword!=null && userPassword2!=null && userPassword.equals(userPassword2)){
			if(fName!=null)
				korisnik.setFirstName(fName);
			
			if(lName!=null)
				korisnik.setLastName(lName);
			
			if(username!=null)
				korisnik.setUsername(username);
			
			
				korisnik.setUserPassword(userPassword);
				
				
				cat = request.getParameter("category");
				
				
				Category category= new Category();

			if(type.equalsIgnoreCase("administrator")){
					korisnik.setType("administrator");
					System.out.println("Korisnikov : "+ korisnik.getType().toString());
					}
				else{
					
					
					if(cat == null){
						korisnik.setCategory(null);
					}	else if(cat.equalsIgnoreCase("All")){
							System.out.println("******************Kategorija je sve "+ cat);	
							korisnik.setCategory(null);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");	
					}
						else if(cat.equalsIgnoreCase("Comic")){
							cat = "2";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");

							
						}else if(cat.equalsIgnoreCase("Sci-fi")){
							cat="3";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");

						}else if(cat.equalsIgnoreCase("Fantasy")){
							cat = "4";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");

						}else if(cat.equalsIgnoreCase("Education")){
							cat="5";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");

						}else if(cat.equalsIgnoreCase("Mystery")){
							cat="6";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");

						}else if(cat.equalsIgnoreCase("Romantic")){
							cat="1";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ korisnik.getCategory());	
							korisnik.setType("subscriber");

						}else if(cat.equalsIgnoreCase("Epic")){
							cat="7";
							category.setCategoryID(Integer.parseInt(cat));
							System.out.println("******************Kategorija je "+ cat);	
							korisnik.setCategory(category);
							System.out.println("******************Kategorija korisnika je "+ category.getName());	
							korisnik.setType("subscriber");

						}
						
					
									
				}
				
			korisnikDao.persist(korisnik);
			getServletContext().getRequestDispatcher("/PrepareCreateControllerKorisnik").forward(request, response);
			return;
			}else{
				getServletContext().getRequestDispatcher("/PrepareCreateControllerKorisnik").forward(request, response);
			}
			
		}catch (ServletException e) {
			log.error(e);
			throw e;
		} catch (IOException e) {
			log.error(e);
			throw e;
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
