

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import dataAccessLayer.EmbeddedNeo4j;

/**
 * Servlet implementation class AgregarDatos
 */
@WebServlet("/AgregarDatos")
public class AgregarDatos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarDatos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				PrintWriter out = response.getWriter();
			 	response.setContentType("application/json");
			 	response.setCharacterEncoding("UTF-8");
			 	JSONObject myResponse = new JSONObject();
			 	
			 	JSONArray nuevo = new JSONArray();
			 	
				 
			 	String name = request.getParameter("name");
			 	String famoso = request.getParameter("famoso");
			 	String zona = request.getParameter("zona");
			 	String tipo= request.getParameter("tipo");
			 	
			 	try ( EmbeddedNeo4j greeter = new EmbeddedNeo4j( "bolt://localhost:7687", "neo4j", "CDPd4t0s" ) )
		        {

					greeter.new_place(name, famoso, tipo, zona);
					String temp = greeter.getName(name).get(0);
					temp += greeter.getTipo(tipo).get(0);
					nuevo.add(temp);
		        	
		        } catch (Exception e) {
		        	nuevo.add("Error al agregar nodo");
					nuevo.add(e.getMessage());
					
				}
			 	
			 	myResponse.put("conteo", nuevo.size()); //Guardo la cantidad de platillos
			 	myResponse.put("nodo", nuevo);
			 	out.println(myResponse);
			 	out.flush(); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
