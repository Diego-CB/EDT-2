/**
 * 
 */
package dataAccessLayer;

import org.neo4j.driver.AuthTokens;
import org.neo4j.driver.Driver;
import org.neo4j.driver.GraphDatabase;
import org.neo4j.driver.Record;
import org.neo4j.driver.Result;
import org.neo4j.driver.Session;
import org.neo4j.driver.Transaction;
import org.neo4j.driver.TransactionWork;

import static org.neo4j.driver.Values.parameters;

import java.util.LinkedList;
import java.util.List;


/**
 * @author Administrator
 *
 */
public class EmbeddedNeo4j implements AutoCloseable{

    private final Driver driver;
    

    public EmbeddedNeo4j( String uri, String user, String password )
    {
        driver = GraphDatabase.driver( uri, AuthTokens.basic( user, password ) );
    }

    @Override
    public void close() throws Exception
    {
        driver.close();
    }

    public void printGreeting( final String message )
    {
        try ( Session session = driver.session() )
        {
            String greeting = session.writeTransaction( new TransactionWork<String>()
            {
                @Override
                public String execute( Transaction tx )
                {
                    Result result = tx.run( "CREATE (a:Greeting) " +
                                                     "SET a.message = $message " +
                                                     "RETURN a.message + ', from node ' + id(a)",
                            parameters( "message", message ) );
                    return result.single().get( 0 ).asString();
                }
            } );
            System.out.println( greeting );
        }
    }
    
    public LinkedList<String> getFood(String zona, String tipo)
    {

        if (!zona.equals("") && !tipo.equals("")){

            try ( Session session = driver.session() )
            {
                LinkedList<String> food = session.readTransaction( new TransactionWork<LinkedList<String>>()
                {
                    @Override
                    public LinkedList<String> execute( Transaction tx )
                    {
                        Result result = tx.run( "match (x:Ubicacion {name: \"" + zona + "\"})-[:CERCA]->(cerca) match (cerca)-[:EN]->(lugares:Restaurante)<-[:TIPO]-(y:Especialidad {name: \"" + tipo +"\"}) return lugares.name");
                        LinkedList<String> listaFood = new LinkedList<String>();
                        List<Record> registros = result.list();
                        for (int i = 0; i < registros.size(); i++) {
                            //myactors.add(registros.get(i).toString());
                            listaFood.add(registros.get(i).get("lugares.name").asString());
                        }
                        
                        return listaFood;
                    }
                } );
                
                return food;
            }
            
        } else if  (zona.equals("") && !tipo.equals("")){

            try ( Session session = driver.session() )
            {
                LinkedList<String> food = session.readTransaction( new TransactionWork<LinkedList<String>>()
                {
                    @Override
                    public LinkedList<String> execute( Transaction tx )
                    {
                        Result result = tx.run( "match (y:Especialidad {name: \"" + tipo +"\"})-[:TIPO]->(tipo) return tipo.name");
                        LinkedList<String> listaFood = new LinkedList<String>();
                        List<Record> registros = result.list();
                        for (int i = 0; i < registros.size(); i++) {
                            //myactors.add(registros.get(i).toString());
                            listaFood.add(registros.get(i).get("tipo.name").asString());
                        }
                        
                        return listaFood;
                    }
                } );
                
                return food;
            }
            
        } else if (!zona.equals("") && tipo.equals("")){

            try ( Session session = driver.session() )
            {
                LinkedList<String> food = session.readTransaction( new TransactionWork<LinkedList<String>>()
                {
                    @Override
                    public LinkedList<String> execute( Transaction tx )
                    {
                        Result result = tx.run( "match (n:Ubicacion {name: \"" + zona + "\"})-[:CERCA]->(cerca) match (cerca)-[:EN]->(lugares:Restaurante) return lugares.name");
                        LinkedList<String> listaFood = new LinkedList<String>();
                        List<Record> registros = result.list();
                        for (int i = 0; i < registros.size(); i++) {
                            //myactors.add(registros.get(i).toString());
                            listaFood.add(registros.get(i).get("lugares.name").asString());
                        }
                        
                        return listaFood;
                    }
                } );
                
                return food;
            }
            
        } else {
            
            try ( Session session = driver.session() )
            {
                LinkedList<String> food = session.readTransaction( new TransactionWork<LinkedList<String>>()
                {
                    @Override
                    public LinkedList<String> execute( Transaction tx )
                    {
                        LinkedList<String> listaFood = new LinkedList<String>();
                        return listaFood;
                    }
                } );
                
                return food;
            }
        }
        
    }
    
    public LinkedList<String> getPlatillo(String lugar)
    {
   	 try ( Session session = driver.session() )
        {
   		 
   		 
   		 LinkedList<String> platillo = session.readTransaction( new TransactionWork<LinkedList<String>>()
            {
                @Override
                public LinkedList<String> execute( Transaction tx )
                {
                    Result result = tx.run( "match (lugar:Restaurante {name: \"" + lugar + "\"}) return lugar.famoso");
                    LinkedList<String> misPlatillos = new LinkedList<String>();
                    List<Record> registros = result.list();
                    for (int i = 0; i < registros.size(); i++) {
                   	 //myactors.add(registros.get(i).toString());
                   	 misPlatillos.add(registros.get(i).get("lugar.famoso").asString());
                    }
                    
                    return misPlatillos;
                }
            } );
            
            return platillo;
        }
   }

    public LinkedList<String> new_place(String name, String famoso, String tipo, String zona)
    {
        
   	 try ( Session session = driver.session() )
        {
   		 
   		 
            LinkedList<String> platillo = session.writeTransaction( new TransactionWork<LinkedList<String>>()
            {
                @Override
                public LinkedList<String> execute( Transaction tx )
                {

                    LinkedList<String> misPlatillos = new LinkedList<String>();

                    try {

                        String nodo = String.join("", name.split(" "));
                        Result result = tx.run("match (zona:Ubicacion {name: \"" + zona + "\"})"
                                                + "match (tipo:Especialidad {name: \"" + tipo + "\"})"
                                                + "Create (" + nodo + ":Restaurante {name: \"" + name + "\", famoso: \"" + famoso + "\"})"
                                                + "CREATE (zona)-[:EN {}]->(" + nodo + "), (tipo)-[:TIPO {}]->(" + nodo + ")");
                        
                    } catch (Exception e) {
                        misPlatillos.add("Mal");
                        misPlatillos.add(name);
                        misPlatillos.add(famoso);
                    }
                    return misPlatillos;
                    
                }
            } );
            
            return platillo;
        }
    }

    public LinkedList<String> getName(String name)
    {

   	 try ( Session session = driver.session() )
        {
   		 
   		 
            LinkedList<String> platillo = session.readTransaction( new TransactionWork<LinkedList<String>>()
            {
                @Override
                public LinkedList<String> execute( Transaction tx )
                {
                    Result result = tx.run("match (n:Restaurante {name: \"" + name + "\"}) return n.name");
                    LinkedList<String> misPlatillos = new LinkedList<String>();
                    List<Record> registros = result.list();
                
                    String nuevo_nodo = "Se agrego el restaurante: "  + registros.get(0).get("n.name").asString();
                    misPlatillos.add(nuevo_nodo);
                    
                    return misPlatillos;
                }
            } );
            
            return platillo;
        }
    }

    public LinkedList<String> getTipo(String tipo)
    {

   	 try ( Session session = driver.session() )
        {
   		 
   		 
            LinkedList<String> platillo = session.readTransaction( new TransactionWork<LinkedList<String>>()
            {
                @Override
                public LinkedList<String> execute( Transaction tx )
                {
                    Result result = tx.run("match (n:Especialidad {name: \"" + tipo + "\"}) return n.name");
                    LinkedList<String> misPlatillos = new LinkedList<String>();
                    List<Record> registros = result.list();
                
                    String nuevo_nodo = " a la especialidad: "  + registros.get(0).get("n.name").asString();
                    misPlatillos.add(nuevo_nodo);
                    
                    return misPlatillos;
                }
            } );
            
            return platillo;
        }
    }
}
