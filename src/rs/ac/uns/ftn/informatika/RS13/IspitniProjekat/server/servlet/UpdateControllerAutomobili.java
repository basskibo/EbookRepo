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

import rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.session.CategoryDaoLocal;

public class UpdateControllerAutomobili extends HttpServlet {
	private static final long serialVersionUID = 46764191336033321L;
	private static Logger log = Logger.getLogger(UpdateControllerAutomobili.class);
	
	@EJB
	private EbookDaoLocal automobilDAO;
	
	@EJB
	private CategoryDaoLocal proizvodjacDAO;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		request.setAttribute("automobili", automobilDAO.findAll());
		request.setAttribute("proizvodjaci", proizvodjacDAO.findAll());
		request.setAttribute("modeli", modelDAO.findAll());
		
		try{
			
			String automobilId = null;
			Integer godinaProizvodnje = null;
			Integer kilometraza = null;
			String gorivo = null;
			String mesto = null;
			String kontakt = null;
			Integer kubikaza = null;
			Integer snaga = null;
			String menjac = null;
			String oprema = null;
			String opisVOzila = null;
			Integer proizvodjacID = null;
			Integer modelID = null;
			
			automobilId = request.getParameter("id");
			System.out.println(request.getParameter("id"));
			
			if((request.getParameter("godinaProizvodnje")!=null) && (!"".equals(request.getParameter("godinaProizvodnje")))){
				godinaProizvodnje = new Integer(request.getParameter("godinaProizvodnje"));
			}	
			if((request.getParameter("kilometraza")!=null) && (!"".equals(request.getParameter("kilometraza")))){
				kilometraza = new Integer(request.getParameter("kilometraza"));
			}
			
			if((request.getParameter("gorivo")!=null) && (!"".equals(request.getParameter("gorivo")))){
				gorivo = request.getParameter("gorivo");
			}
			
			if((request.getParameter("mesto")!=null) && (!"".equals(request.getParameter("mesto")))){
				mesto = request.getParameter("mesto");
			}
			
			if((request.getParameter("kontakt")!=null) && (!"".equals(request.getParameter("kontakt")))){
				kontakt = request.getParameter("kontakt");
			}
			
			if((request.getParameter("kubikaza")!=null) && (!"".equals(request.getParameter("kubikaza")))){
				kubikaza = new Integer(request.getParameter("kubikaza"));
			}
			
			if((request.getParameter("snaga")!=null) && (!"".equals(request.getParameter("snaga")))){
				snaga = new Integer(request.getParameter("snaga"));
			}
			
			if((request.getParameter("menjac")!=null) && (!"".equals(request.getParameter("menjac")))){
				menjac = request.getParameter("menjac");
			}
			
			if((request.getParameter("oprema")!=null) && (!"".equals(request.getParameter("oprema")))){
				oprema = request.getParameter("oprema");
			}
			
			if((request.getParameter("opis")!=null) && (!"".equals(request.getParameter("opis")))){
				opisVOzila = request.getParameter("opis");
			}
			if((request.getParameter("proizvodjac")!=null) && (!"".equals(request.getParameter("proizvodjac")))){
				proizvodjacID = new Integer(request.getParameter("proizvodjac"));
			}
			
			if((request.getParameter("model")!=null) && (!"".equals(request.getParameter("model")))){
				modelID = new Integer(request.getParameter("model"));
			}

			if ((automobilId != null) && (!automobilId.equals(""))) {
				Ebook automobil = new Ebook();
				automobil.setId(new Integer(automobilId));
				
				if(godinaProizvodnje != null){
					automobil.setGodinaProizvodnje(godinaProizvodnje);
				}
				
				if(kilometraza != null){
					automobil.setKilometraza(kilometraza);
				}
				
				if(proizvodjacID != null){
					automobil.setProizvodjac(proizvodjacDAO.findById(proizvodjacID));
				}
				
				if(modelID != null){
					automobil.setModel(modelDAO.findById(modelID));
				}
				
				if(opisVOzila != null){
					automobil.setOpisVOzila(opisVOzila);
				}
				
				if(oprema != null){
					automobil.setOprema(oprema);
				}
				
				if(menjac != null){
					automobil.setMenjac(menjac);
				}
				
				if(snaga != null){
					automobil.setSnaga(snaga);
				}
				
				if(kubikaza != null){
					automobil.setKubikaza(kubikaza);
				}
				
				if(kontakt != null){
					automobil.setKontakt(kontakt);
				}
				
				if(mesto != null){
					automobil.setMesto(mesto);
				}
				
				if(gorivo != null){
					automobil.setGorivo(gorivo);
				}
				automobilDAO.merge(automobil);
			
			}
			getServletContext().getRequestDispatcher("/PrepareCreateControllAutomobil").forward(request, response);
			
		}catch (ServletException e){
			log.error(e);
			throw e;
		}catch (IOException e) {
			log.error(e);
			throw e;
		} */
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
