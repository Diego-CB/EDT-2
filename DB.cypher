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
CREATE (LaBerna: Restaurante  {name:'Panadería Berna', famoso: 'Pan dulce'})
CREATE (Isopan: Restaurante  {name: 'Panadería Isopan', famoso: 'Relampagos'})
CREATE (PanPavallier: Restaurante  {name: 'Pan Pavallier', famoso: 'Champurradas'})
CREATE (DominosPizza: Restaurante  {name:'Dominos Pizza', famoso: 'Dominator'})
CREATE (LittleCaesars: Restaurante  {name:'Little Caesars', famoso: 'Pizza de pepperoni'})
CREATE (PapaJohns: Restaurante  {name:'Papa Jonh´s', famoso: 'Papa´s Favorite'})
CREATE (HambuergesasDelPuente: Restaurante  {name:'Hamburgesas del Puente', famoso: 'Hamburgesa Clasica'})
CREATE (Wendys: Restaurante  {name:'Wendy´s', famoso: "Dave´s Jr"})
CREATE (FriscoGrill: Restaurante  {name:'Frisco Grill', famoso: "Philly Cheeseburger"})
CREATE (ElCamioncito: Restaurante  {name:'Taquería El Camioncito', famoso: "La Ronda"})
CREATE (ElPinche: Restaurante  {name:'El Pinche', famoso: "Tacos Tumbras"})
CREATE (Lasflautas: Restaurante  {name:'Frisco Grill', famoso: "Tacos de Carnitas"})
CREATE (LaEstancia: Restaurante  {name:'La Estancia', famoso: "Filet Mignon"})
CREATE (DondeJoselito: Restaurante  {name:'Donde Joselito', famoso: "Chorizo Argentino"})
CREATE (CasaEscobar: Restaurante  {name:'Casa Escobar', famoso: "Mar y Tierra"})
CREATE (Caldos: Restaurante  {name:'7 Caldos', famoso: 'Lomito típico'})
CREATE (ElRinconTipico: Restaurante  {name:'El Rincon Tipico', famoso: "Pepian"})
CREATE (Arrincuan: Restaurante  {name:'Arrincuan', famoso: "Caldo de gallina"})
CREATE (Starbucks: Restaurante  {name:'Starbucks', famoso: "Caffe Vanilla Frappuchino"})
CREATE (CafeBarista: Restaurante  {name:'Café Barista', famoso: "Cappuchino"})
CREATE (CaféGitane: Restaurante  {name:'Café Gitane', famoso: "Café americano"})
CREATE (TreFratelli: Restaurante  {name:'Tre Fratelli', famoso: "Pasta Alfredo con Pollo"})
CREATE (Margherita: Restaurante  {name:'Margherita', famoso: "Pizza Margherita"})
CREATE (MrSushi: Restaurante  {name:'Mr. Sushi', famoso: "Mr. Sushi especial"})
CREATE (PFChang: Restaurante  {name:'P.F. Chang\'s', famoso: "Dynamite Roll"})
CREATE (Sushimon: Restaurante  {name:'Shushi mon', famoso: "Cayibel Roll"})
CREATE (PuertoBarrios: Restaurante  {name:'Puerto Barrios', famoso: "Mariscos Frescos"})
CREATE (LosDelfines: Restaurante  {name:'Los Delfines', famoso: "Ceviche de Camarón"})
CREATE (LaTrampa: Restaurante  {name:'La Trampa', famoso: "El chapin"})
CREATE (Dunkin: Restaurante  {name:'Dunkin\' Dougnuts', famoso: "Docena de donas"})
CREATE (KrispyKreme: Restaurante  {name:'Krispy Kreme', famoso: "Donas glaseadas"})
CREATE (Panda: Restaurante  {name:'Panda Express', famoso: "Orange Chiken"})
CREATE (JKming: Restaurante  {name:'JK Ming', famoso: "Chow Mein mixto"})
CREATE (SanMartín: Restaurante  {name:'San Martín', famoso: "Sandwich La nona"})
CREATE (Panitos: Restaurante  {name:'Panitos y algo más', famoso: "Pan de Chorizo Chimichurri y Queso"})
CREATE (SubWay: Restaurante  {name:'SubWay', famoso: "Sub de Pollo"})
CREATE (TacoBell: Restaurante  {name:'Taco Bell', famoso: "Chalupas"})
CREATE (McDonalds: Restaurante  {name:'McDonald\'s', famoso: "Big Mac"})
CREATE (Campero: Restaurante  {name:'Pollo Campero', famoso: "Super Campero"})


// Nodos de Ubicacion
CREATE (Z1: Ubicacion {name: 'Zona 1',zona: 1})
CREATE (Z2: Ubicacion {name: 'Zona 2',zona: 2})
CREATE (Z3: Ubicacion {name: 'Zona 3',zona: 3})
CREATE (Z4: Ubicacion {name: 'Zona 4',zona: 4})
CREATE (Z5: Ubicacion {name: 'Zona 5',zona: 5})
CREATE (Z6: Ubicacion {name: 'Zona 6',zona: 6})
CREATE (Z7: Ubicacion {name: 'Zona 7',zona: 7})
CREATE (Z8: Ubicacion {name: 'Zona 8',zona: 8})
CREATE (Z9: Ubicacion {name: 'Zona 9', zona: 9})
CREATE (Z10: Ubicacion {name:'Zona 10',zona: 10})
CREATE (Z11: Ubicacion {name: 'Zona 11', zona: 11})
CREATE (Z12: Ubicacion {name: 'Zona 12', zona: 12})
CREATE (Z13: Ubicacion {name: 'Zona 13',zona: 13})
CREATE (Z14: Ubicacion {name: 'Zona 14',zona: 14})
CREATE (Z15: Ubicacion {name: 'Zona 15',zona: 15})
CREATE (Z16: Ubicacion {name: 'Zona 16',zona: 16})
CREATE (Z17: Ubicacion {name: 'Zona 17',zona: 17})
CREATE (Z18: Ubicacion {name: 'Zona 18',zona: 18})
CREATE (Z21: Ubicacion {name: 'Zona 21', zona: 21})


// Nodos de Especialidad
CREATE (Pan: Especialidad {name: 'Panaderia'})
CREATE (Pizza: Especialidad {name: 'Pizzerias'})
CREATE (Burgers: Especialidad {name: 'Hambuergesas'})
CREATE (Tacos: Especialidad {name: 'Tacos'})
CREATE (Tipica: Especialidad {name: 'Comida Tipica'})
CREATE (Steak: Especialidad {name: 'Steak House'})
CREATE (Coffe: Especialidad {name: 'Cafeteria'})
CREATE (Pastas: Especialidad {name: 'Italiana'})
CREATE (Sushi: Especialidad {name: 'Sushi'})
CREATE (Mariscos: Especialidad {name: 'Mariscos'})
CREATE (Donas: Especialidad {name: 'Donas'})
CREATE (China: Especialidad {name: 'China'})
CREATE (Panes: Especialidad {name: 'Sandwiches'})
CREATE (Fast: Especialidad {name: 'Comida Rápida'})


// Relaciones de ubicacion con restaurantes 
CREATE
// Relacion de PANADERIAS 
(SanMartín)-[:EN {}]->(Z11),
(SanMartín)-[:EN {}]->(Z9),
(SanMartín)-[:EN {}]->(Z10),
(SanMartín)-[:EN {}]->(Z14),
(SanMartín)-[:EN {}]->(Z12),
(SanMartín)-[:EN {}]->(Z16),
(SanMartín)-[:EN {}]->(Z15),


(LaBerna)-[:EN {}]->(Z10),
(LaBerna)-[:EN {}]->(Z1),

(Isopan)-[:EN {}]->(Z5),
(Isopan)-[:EN {}]->(Z4),
(Isopan)-[:EN {}]->(Z14),
(Isopan)-[:EN {}]->(Z15),
(Isopan)-[:EN {}]->(Z10),

(PanPavallier)-[:EN {}]->(Z12),
(PanPavallier)-[:EN {}]->(Z13),
(PanPavallier)-[:EN {}]->(Z2),
(PanPavallier)-[:EN {}]->(Z18),

// Relacion de Pizzerias
 (DominosPizza)-[:EN {}]->(Z4),
 (DominosPizza)-[:EN {}]->(Z8),
 (DominosPizza)-[:EN {}]->(Z12),
 (DominosPizza)-[:EN {}]->(Z16),
 (DominosPizza)-[:EN {}]->(Z9),
 (DominosPizza)-[:EN {}]->(Z11),

 (LittleCaesars)-[:EN {}]->(Z21),
 (LittleCaesars)-[:EN {}]->(Z14),
 (LittleCaesars)-[:EN {}]->(Z11),
 (LittleCaesars)-[:EN {}]->(Z10),
 (LittleCaesars)-[:EN {}]->(Z3),

 (PapaJohns)-[:EN {}]->(Z9),
 (PapaJohns)-[:EN {}]->(Z10),
 (PapaJohns)-[:EN {}]->(Z12),
 (PapaJohns)-[:EN {}]->(Z15),

// Relaciones de Hamburgesas 
(HambuergesasDelPuente)-[:EN {}]->(Z9),
(HambuergesasDelPuente)-[:EN {}]->(Z11),
(HambuergesasDelPuente)-[:EN {}]->(Z10),
(HambuergesasDelPuente)-[:EN {}]->(Z16),

(Wendys)-[:EN {}]->(Z10),
(Wendys)-[:EN {}]->(Z15),
(Wendys)-[:EN {}]->(Z9),
(Wendys)-[:EN {}]->(Z11),
(Wendys)-[:EN {}]->(Z1),
(Wendys)-[:EN {}]->(Z6),
(Wendys)-[:EN {}]->(Z17),

(FriscoGrill)-[:EN {}]->(Z11),
(FriscoGrill)-[:EN {}]->(Z16),
(FriscoGrill)-[:EN {}]->(Z15),

//Relacion de Tacos 
(ElCamioncito)-[:EN {}]->(Z15),
(ElCamioncito)-[:EN {}]->(Z7),
(ElCamioncito)-[:EN {}]->(Z10),

(ElPinche)-[:EN {}]->(Z11),
(ElPinche)-[:EN {}]->(Z15),
(ElPinche)-[:EN {}]->(Z14),
(ElPinche)-[:EN {}]->(Z7),
(ElPinche)-[:EN {}]->(Z17),
(ElPinche)-[:EN {}]->(Z10),

(Lasflautas)-[:EN {}]->(Z9),

// Relaciones de Stake House
(DondeJoselito)-[:EN {}]->(Z9),

(LaEstancia)-[:EN {}]->(Z10),
(LaEstancia)-[:EN {}]->(Z15),
(LaEstancia)-[:EN {}]->(Z14),
(LaEstancia)-[:EN {}]->(Z13),
(LaEstancia)-[:EN {}]->(Z7),
(LaEstancia)-[:EN {}]->(Z11),
(LaEstancia)-[:EN {}]->(Z9),

(CasaEscobar)-[:EN {}]->(Z10),
(CasaEscobar)-[:EN {}]->(Z5),
(CasaEscobar)-[:EN {}]->(Z16),

// Relacion de ComidaTipica
(Caldos)-[:EN {}]->(Z9),
(Caldos)-[:EN {}]->(Z16),
(Caldos)-[:EN {}]->(Z11),
(Caldos)-[:EN {}]->(Z10),

(ElRinconTipico)-[:EN {}]->(Z10),

(Arrincuan)-[:EN {}]->(Z9),
(Arrincuan)-[:EN {}]->(Z1),

// Relacion de Cafes
(Starbucks)-[:EN {}]->(Z9),
(Starbucks)-[:EN {}]->(Z10),
(Starbucks)-[:EN {}]->(Z16),
(Starbucks)-[:EN {}]->(Z11),

(CafeBarista)-[:EN {}]->(Z14),
(CafeBarista)-[:EN {}]->(Z10),
(CafeBarista)-[:EN {}]->(Z16),
(CafeBarista)-[:EN {}]->(Z15),
(CafeBarista)-[:EN {}]->(Z9),

(CaféGitane)-[:EN {}]->(Z14),
(CaféGitane)-[:EN {}]->(Z10),
(CaféGitane)-[:EN {}]->(Z4),
(CaféGitane)-[:EN {}]->(Z11),
(CaféGitane)-[:EN {}]->(Z15),
(CaféGitane)-[:EN {}]->(Z13),
(CaféGitane)-[:EN {}]->(Z12),

// Relacion de: Pasta
(TreFratelli)-[:EN {}]->(Z11),
(TreFratelli)-[:EN {}]->(Z16),
(TreFratelli)-[:EN {}]->(Z10),

(Margherita)-[:EN {}]->(Z15),

// Relacion de: Sushi
(MrSushi)-[:EN {}]->(Z10),
(MrSushi)-[:EN {}]->(Z14),
(PFChang)-[:EN {}]->(Z10),
(Sushimon)-[:EN {}]->(Z4),

// Relacion de: Mariscos
(PuertoBarrios)-[:EN {}]->(Z9),
(LosDelfines)-[:EN {}]->(Z15),
(LaTrampa)-[:EN {}]->(Z16),

// Relacion de: Donas
(Dunkin)-[:EN {}]->(Z15),
(Dunkin)-[:EN {}]->(Z10),
(Dunkin)-[:EN {}]->(Z5),
(Dunkin)-[:EN {}]->(Z1),

(KrispyKreme)-[:EN {}]->(Z15),
(KrispyKreme)-[:EN {}]->(Z10),

// Relacion de: Comida China
(Panda)-[:EN {}]->(Z10),
(Panda)-[:EN {}]->(Z4),
(Panda)-[:EN {}]->(Z14),
(Panda)-[:EN {}]->(Z12),

(JKming)-[:EN {}]->(Z11),
(JKming)-[:EN {}]->(Z10),

// Relacion de: Sandwiches
(Panitos)-[:EN {}]->(Z10),

(SubWay)-[:EN {}]->(Z10),
(SubWay)-[:EN {}]->(Z11),
(SubWay)-[:EN {}]->(Z18),
(SubWay)-[:EN {}]->(Z15),
(SubWay)-[:EN {}]->(Z2),

// relaciones de: comida rapida
(TacoBell)-[:EN {}]->(Z9),
(TacoBell)-[:EN {}]->(Z10),
(TacoBell)-[:EN {}]->(Z11),
(TacoBell)-[:EN {}]->(Z7),
(TacoBell)-[:EN {}]->(Z8),
(TacoBell)-[:EN {}]->(Z16),
(TacoBell)-[:EN {}]->(Z17),
(TacoBell)-[:EN {}]->(Z3),
(TacoBell)-[:EN {}]->(Z1),
(TacoBell)-[:EN {}]->(Z5),
(TacoBell)-[:EN {}]->(Z4),
(TacoBell)-[:EN {}]->(Z6),
(TacoBell)-[:EN {}]->(Z12),

(McDonalds)-[:EN {}]->(Z9),
(McDonalds)-[:EN {}]->(Z10),
(McDonalds)-[:EN {}]->(Z11),
(McDonalds)-[:EN {}]->(Z7),
(McDonalds)-[:EN {}]->(Z8),
(McDonalds)-[:EN {}]->(Z16),
(McDonalds)-[:EN {}]->(Z17),
(McDonalds)-[:EN {}]->(Z3),
(McDonalds)-[:EN {}]->(Z1),
(McDonalds)-[:EN {}]->(Z5),
(McDonalds)-[:EN {}]->(Z4),
(McDonalds)-[:EN {}]->(Z6),
(McDonalds)-[:EN {}]->(Z12),
(McDonalds)-[:EN {}]->(Z21),
(McDonalds)-[:EN {}]->(Z2),

(Campero)-[:EN {}]->(Z9),
(Campero)-[:EN {}]->(Z10),
(Campero)-[:EN {}]->(Z11),
(Campero)-[:EN {}]->(Z7),
(Campero)-[:EN {}]->(Z8),
(Campero)-[:EN {}]->(Z16),
(Campero)-[:EN {}]->(Z17),
(Campero)-[:EN {}]->(Z3),
(Campero)-[:EN {}]->(Z1),
(Campero)-[:EN {}]->(Z5),
(Campero)-[:EN {}]->(Z4),
(Campero)-[:EN {}]->(Z6),
(Campero)-[:EN {}]->(Z12),
(Campero)-[:EN {}]->(Z21),
(Campero)-[:EN {}]->(Z2)

//relaciones de especialidades
CREATE

// panaderia
(LaBerna)-[:TIPO {}]->(Pan),
(Isopan)-[:TIPO {}]->(Pan),
(PanPavallier)-[:TIPO {}]->(Pan),
(SanMartín)-[:TIPO {}]->(Pan),


// Pizza
(DominosPizza)-[:TIPO {}]->(Pizza),
(LittleCaesars)-[:TIPO {}]->(Pizza),
(PapaJohns)-[:TIPO {}]->(Pizza),
(Margherita)-[:TIPO {}]->(Pizza),

// Burgers
(HambuergesasDelPuente)-[:TIPO {}]->(Burgers),
(Wendys)-[:TIPO {}]->(Burgers),
(FriscoGrill)-[:TIPO {}]->(Burgers),

// Tacos
(ElCamioncito)-[:TIPO {}]->(Tacos),
(ElPinche)-[:TIPO {}]->(Burgers),
(Lasflautas)-[:TIPO {}]->(Burgers),

// Steak House
(DondeJoselito)-[:TIPO {}]->(Steak),
(LaEstancia)-[:TIPO {}]->(Steak),
(CasaEscobar)-[:TIPO {}]->(Steak),

// Comida tipica
(Caldos)-[:TIPO {}]->(Tipica),
(ElRinconTipico)-[:TIPO {}]->(Tipica),
(Arrincuan)-[:TIPO {}]->(Tipica),

//Cafe
(Starbucks)-[:TIPO {}]->(Coffe),
(CafeBarista)-[:TIPO {}]->(Coffe),
(CaféGitane)-[:TIPO {}]->(Coffe),

//Pasta
(TreFratelli)-[:TIPO {}]->(Pastas),
(Margherita)-[:TIPO {}]->(Pastas),

// Sushi
(MrSushi)-[:TIPO {}]->(Sushi),
(PFChang)-[:TIPO {}]->(Sushi),
(Sushimon)-[:TIPO {}]->(Sushi),

// Mariscos
(PuertoBarrios)-[:TIPO {}]->(Mariscos),
(LosDelfines)-[:TIPO {}]->(Mariscos),
(LaTrampa)-[:TIPO {}]->(Mariscos),

// Donas
(Dunkin)-[:TIPO {}]->(Donas),
(KrispyKreme)-[:TIPO {}]->(Donas),

// China
(PFChang)-[:TIPO {}]->(China),
(Panda)-[:TIPO {}]->(China),
(JKming)-[:TIPO {}]->(China),

// Sanwiches
(Panitos)-[:TIPO {}]->(Panes),
(SubWay)-[:TIPO {}]->(Panes),

// Comida Rapida
(Panda)-[:TIPO {}]->(Fast),
(TacoBell)-[:TIPO {}]->(Fast),
(McDonalds)-[:TIPO {}]->(Fast),
(SubWay)-[:TIPO {}]->(Fast),
(Campero)-[:TIPO {}]->(Fast)


// Relaciones de ubicaciones
CREATE

// Relaciones: Zona 1
(Z1)-[:CERCA {}]->(Z2),
(Z1)-[:CERCA {}]->(Z3),
(Z1)-[:CERCA {}]->(Z4),
(Z1)-[:CERCA {}]->(Z5),
(Z1)-[:CERCA {}]->(Z6),

// Relaciones: Zona 2
(Z2)-[:CERCA {}]->(Z6),
(Z2)-[:CERCA {}]->(Z1),
(Z2)-[:CERCA {}]->(Z3),

// Relaciones: Zona 3
(Z3)-[:CERCA {}]->(Z1),
(Z3)-[:CERCA {}]->(Z2),
(Z3)-[:CERCA {}]->(Z4),
(Z3)-[:CERCA {}]->(Z7),

// Relaciones: Zona 4
(Z4)-[:CERCA {}]->(Z5),
(Z4)-[:CERCA {}]->(Z1),
(Z4)-[:CERCA {}]->(Z3),
(Z4)-[:CERCA {}]->(Z8),
(Z4)-[:CERCA {}]->(Z9),

// Relaciones: Zona 5
(Z5)-[:CERCA {}]->(Z4),
(Z5)-[:CERCA {}]->(Z6),
(Z5)-[:CERCA {}]->(Z1),
(Z5)-[:CERCA {}]->(Z10),

// Relaciones: Zona 6
(Z6)-[:CERCA {}]->(Z2),
(Z6)-[:CERCA {}]->(Z1),
(Z6)-[:CERCA {}]->(Z5),

// Relaciones: Zona 7
(Z7)-[:CERCA {}]->(Z3),
(Z7)-[:CERCA {}]->(Z8),

// Relaciones: Zona 8
(Z8)-[:CERCA {}]->(Z7),
(Z8)-[:CERCA {}]->(Z4),
(Z8)-[:CERCA {}]->(Z11),
(Z8)-[:CERCA {}]->(Z12),

// Relaciones: Zona 9
(Z9)-[:CERCA {}]->(Z4),
(Z9)-[:CERCA {}]->(Z8),
(Z9)-[:CERCA {}]->(Z12),
(Z9)-[:CERCA {}]->(Z13),

// Relaciones: Zona 10
(Z10)-[:CERCA {}]->(Z5),
(Z10)-[:CERCA {}]->(Z9),
(Z10)-[:CERCA {}]->(Z14),

// Relaciones: Zona 11
(Z11)-[:CERCA {}]->(Z8),
(Z11)-[:CERCA {}]->(Z12),

// Relaciones: Zona 12
(Z12)-[:CERCA {}]->(Z8),
(Z12)-[:CERCA {}]->(Z9),
(Z12)-[:CERCA {}]->(Z11),
(Z12)-[:CERCA {}]->(Z21),

// Relaciones: Zona 13
(Z13)-[:CERCA {}]->(Z9),
(Z13)-[:CERCA {}]->(Z14),

// Relaciones: Zona 14
(Z14)-[:CERCA {}]->(Z10),
(Z14)-[:CERCA {}]->(Z13),
(Z14)-[:CERCA {}]->(Z15),

// Relaciones: Zona 15
(Z15)-[:CERCA {}]->(Z16),
(Z15)-[:CERCA {}]->(Z14),
(Z15)-[:CERCA {}]->(Z10),


// Relaciones: Zona 16
(Z16)-[:CERCA {}]->(Z17),
(Z16)-[:CERCA {}]->(Z15),
(Z16)-[:CERCA {}]->(Z5),
(Z16)-[:CERCA {}]->(Z6),

// Relaciones: Zona 17
(Z17)-[:CERCA {}]->(Z16),
(Z17)-[:CERCA {}]->(Z18),

// Relaciones: Zona 18
(Z18)-[:CERCA {}]->(Z17),
(Z18)-[:CERCA {}]->(Z2),
(Z18)-[:CERCA {}]->(Z6),

// Relaciones: Zona 21
(Z21)-[:CERCA {}]->(Z12)
