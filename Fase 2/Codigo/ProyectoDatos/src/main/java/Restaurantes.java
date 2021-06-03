

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;
import org.json.simple.JSONArray;


import dataAccessLayer.EmbeddedNeo4j;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/Restaurantes")
public class Restaurantes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restaurantes() {
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
		 	
		 	JSONArray ArrayRestaurantes = new JSONArray();
		 	
		 	String zona = request.getParameter("zona");
		 	String tipo = request.getParameter("tipo");
		 	
		 	 try ( EmbeddedNeo4j greeter = new EmbeddedNeo4j( "bolt://localhost:7687", "neo4j", "CDPd4t0s" ) )
		        {
				 	LinkedList<String> MisRestaurantes = greeter.getFood(zona, tipo);
				 	
				 	while (!MisRestaurantes.isEmpty()){
			            String temp = MisRestaurantes.remove(0);
			            if (!MisRestaurantes.contains(temp)){
			            	ArrayRestaurantes.add(temp);
			            }
			        }
		        	
		        } catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		 	
		 	myResponse.put("conteo", ArrayRestaurantes.size()); //Guardo la cantidad de actores
		 	myResponse.put("lugares", ArrayRestaurantes);
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
