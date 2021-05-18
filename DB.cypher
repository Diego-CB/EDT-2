//*****************************************************
// Universidad del Valle de Guatemala  
// Algoritmos y estructuras de datos, seccion: 30
// Proyecto 2, sistem de recomendaciones de restaurantes
// Integrantes:
// Diego Alejandro Cordova Barrera, 20212
// Cristian Eduardo Aguirre Duarte, 20231
// Gabriela Paola Contreras Guerra, 20213
// Nodos y relaciones de la base de datos basada en grafos

//***************** INCIO DEL PROGRAMA *****************

// Nodos de Restaurante
CREATE (PuertoBarrios:Resturante {name:'Puerto Barrios', famoso: "Mariscos Frescos"})
CREATE (LaBerna:Resturante {name:'La Berna Reeves', famoso: "Pan dulce"})
CREATE (TacoBell:Resturante {name:'Taco Bell', famoso: "Chalupas"})
CREATE (CielitoLindo:Resturante {name:'Cielito Lindo', famoso: "Tacos de CichinitaPibill"})

// Nodos de Ubicacion
CREATE (Z10:Ubicacion {name: 'Zona 10',zona: 10})
CREATE (Z9:Ubicacion {name: 'Zona 9', zona: 9})
CREATE (Z15:Ubicacion {name: 'Zona 15', zona: 15})
CREATE (Z11:Ubicacion {name: 'Zona 11',zona: 11})

// Nodos de Rating
CREATE (R4:Rating {name: 'Ranking 4', stars: 4})
CREATE (R6:Rating {name: 'Ranking 6', stars: 6})

// Relaciones de ubicacion
CREATE
(TacoBell)-[:CERCA {}]->(Z10),
(TacoBell)-[:CERCA {}]->(Z9),
(TacoBell)-[:CERCA {}]->(Z15),
(TacoBell)-[:CERCA {}]->(Z11),

(LaBerna)-[:CERCA {}]->(Z10),
(LaBerna)-[:CERCA {}]->(Z15),

(PuertoBarrios)-[:CERCA {}]->(Z10),
(PuertoBarrios)-[:CERCA {}]->(Z9),

(CielitoLindo)-[:CERCA {}]->(Z11),
(CielitoLindo)-[:CERCA {}]->(Z9)

// Relaciones de Rating
CREATE
(TacoBell)-[:Calificacion {}]->(R4),
(LaBerna)-[:Calificacion {}]->(R6),
(PuertoBarrios)-[:Calificacion {}]->(R6),
(CielitoLindo)-[:Calificacion {}]->(R4)
