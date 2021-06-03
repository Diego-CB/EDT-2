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
(Z11)-[:EN {}]->(SanMartín),
(Z9)-[:EN {}]->(SanMartín),
(Z10)-[:EN {}]->(SanMartín),
(Z14)-[:EN {}]->(SanMartín),
(Z12)-[:EN {}]->(SanMartín),
(Z16)-[:EN {}]->(SanMartín),
(Z15)-[:EN {}]->(SanMartín),


(Z10)-[:EN {}]->(LaBerna),
(Z1)-[:EN {}]->(LaBerna),

(Z5)-[:EN {}]->(Isopan),
(Z4)-[:EN {}]->(Isopan),
(Z14)-[:EN {}]->(Isopan),
(Z15)-[:EN {}]->(Isopan),
(Z10)-[:EN {}]->(Isopan),

(Z12)-[:EN {}]->(PanPavallier),
(Z13)-[:EN {}]->(PanPavallier),
(Z2)-[:EN {}]->(PanPavallier),
(Z18)-[:EN {}]->(PanPavallier),

// Relacion de Pizzerias
(Z4)-[:EN {}]->(DominosPizza),
(Z8)-[:EN {}]->(DominosPizza),
(Z12)-[:EN {}]->(DominosPizza),
(Z16)-[:EN {}]->(DominosPizza),
(Z9)-[:EN {}]->(DominosPizza),
(Z11)-[:EN {}]->(DominosPizza),

(Z21)-[:EN {}]->(LittleCaesars), 
(Z14)-[:EN {}]->(LittleCaesars),
(Z11)-[:EN {}]->(LittleCaesars),
(Z10)-[:EN {}]->(LittleCaesars),
(Z3)-[:EN {}]->(LittleCaesars),

(Z9)-[:EN {}]->(PapaJohns), 
(Z10)-[:EN {}]->(PapaJohns),
(Z12)-[:EN {}]->(PapaJohns),
(Z15)-[:EN {}]->(PapaJohns),

// Relaciones de Hamburgesas 
(Z9)-[:EN {}]->(HambuergesasDelPuente),
(Z11)-[:EN {}]->(HambuergesasDelPuente),
(Z10)-[:EN {}]->(HambuergesasDelPuente),
(Z16)-[:EN {}]->(HambuergesasDelPuente),

(Z10)-[:EN {}]->(Wendys),
(Z15)-[:EN {}]->(Wendys),
(Z17)-[:EN {}]->(Wendys),
(Z11)-[:EN {}]->(Wendys),
(Z1)-[:EN {}]->(Wendys),
(Z9)-[:EN {}]->(Wendys),
(Z6)-[:EN {}]->(Wendys),

(Z11)-[:EN {}]->(FriscoGrill),
(Z16)-[:EN {}]->(FriscoGrill),
(Z15)-[:EN {}]->(FriscoGrill),

//Relacion de Tacos 
(Z15)-[:EN {}]->(ElCamioncito),
(Z7)-[:EN {}]->(ElCamioncito),
(Z10)-[:EN {}]->(ElCamioncito),

(Z11)-[:EN {}]->(ElPinche),
(Z15)-[:EN {}]->(ElPinche),
(Z14)-[:EN {}]->(ElPinche),
(Z17)-[:EN {}]->(ElPinche),
(Z10)-[:EN {}]->(ElPinche),
(Z7)-[:EN {}]->(ElPinche),

(Z9)-[:EN {}]->(Lasflautas),

// Relaciones de Stake House
(Z9)-[:EN {}]->(DondeJoselito),

(Z10)-[:EN {}]->(LaEstancia),
(Z15)-[:EN {}]->(LaEstancia),
(Z14)-[:EN {}]->(LaEstancia),
(Z13)-[:EN {}]->(LaEstancia),
(Z11)-[:EN {}]->(LaEstancia),
(Z7)-[:EN {}]->(LaEstancia),
(Z9)-[:EN {}]->(LaEstancia),

(Z10)-[:EN {}]->(CasaEscobar),
(Z5)-[:EN {}]->(CasaEscobar),
(Z16)-[:EN {}]->(CasaEscobar),

// Relacion de ComidaTipica
(Z9)-[:EN {}]->(Caldos),
(Z16)-[:EN {}]->(Caldos),
(Z11)-[:EN {}]->(Caldos),
(Z10)-[:EN {}]->(Caldos),

(Z10)-[:EN {}]->(ElRinconTipico),

(Z9)-[:EN {}]->(Arrincuan),
(Z1)-[:EN {}]->(Arrincuan),

// Relacion de Cafes
(Z9)-[:EN {}]->(Starbucks),
(Z10)-[:EN {}]->(Starbucks),
(Z16)-[:EN {}]->(Starbucks),
(Z11)-[:EN {}]->(Starbucks),

(Z14)-[:EN {}]->(CafeBarista),
(Z10)-[:EN {}]->(CafeBarista),
(Z16)-[:EN {}]->(CafeBarista),
(Z15)-[:EN {}]->(CafeBarista),
(Z9)-[:EN {}]->(CafeBarista),

(Z14)-[:EN {}]->(CaféGitane),
(Z10)-[:EN {}]->(CaféGitane),
(Z11)-[:EN {}]->(CaféGitane),
(Z15)-[:EN {}]->(CaféGitane),
(Z13)-[:EN {}]->(CaféGitane),
(Z12)-[:EN {}]->(CaféGitane),
(Z4)-[:EN {}]->(CaféGitane),

// Relacion de: Pasta
(Z11)-[:EN {}]->(TreFratelli),
(Z16)-[:EN {}]->(TreFratelli),
(Z10)-[:EN {}]->(TreFratelli),

(Z15)-[:EN {}]->(Margherita),

// Relacion de: Sushi
(Z10)-[:EN {}]->(MrSushi),
(Z14)-[:EN {}]->(MrSushi),
(Z10)-[:EN {}]->(PFChang),
(Z4)-[:EN {}]->(Sushimon),

// Relacion de: Mariscos
(Z9)-[:EN {}]->(PuertoBarrios),
(Z15)-[:EN {}]->(LosDelfines),
(Z16)-[:EN {}]->(LaTrampa),

// Relacion de: Donas
(Z15)-[:EN {}]->(Dunkin),
(Z10)-[:EN {}]->(Dunkin),
(Z5)-[:EN {}]->(Dunkin),
(Z1)-[:EN {}]->(Dunkin),

(Z15)-[:EN {}]->(KrispyKreme),
(Z10)-[:EN {}]->(KrispyKreme),

// Relacion de: Comida China
(Z10)-[:EN {}]->(Panda),
(Z14)-[:EN {}]->(Panda),
(Z12)-[:EN {}]->(Panda),
(Z4)-[:EN {}]->(Panda),

(Z11)-[:EN {}]->(JKming),
(Z10)-[:EN {}]->(JKming),

// Relacion de: Sandwiches
(Z10)-[:EN {}]->(Panitos),

(Z10)-[:EN {}]->(SubWay), 
(Z11)-[:EN {}]->(SubWay),
(Z18)-[:EN {}]->(SubWay),
(Z15)-[:EN {}]->(SubWay),
(Z2)-[:EN {}]->(SubWay),

// relaciones de: comida rapida
(Z10)-[:EN {}]->(TacoBell),
(Z12)-[:EN {}]->(TacoBell),
(Z16)-[:EN {}]->(TacoBell),
(Z17)-[:EN {}]->(TacoBell),
(Z11)-[:EN {}]->(TacoBell),
(Z7)-[:EN {}]->(TacoBell),
(Z8)-[:EN {}]->(TacoBell),
(Z3)-[:EN {}]->(TacoBell),
(Z1)-[:EN {}]->(TacoBell),
(Z5)-[:EN {}]->(TacoBell),
(Z4)-[:EN {}]->(TacoBell),
(Z9)-[:EN {}]->(TacoBell),
(Z6)-[:EN {}]->(TacoBell),

(Z1)-[:EN {}]->(McDonalds),
(Z2)-[:EN {}]->(McDonalds),
(Z3)-[:EN {}]->(McDonalds),
(Z4)-[:EN {}]->(McDonalds),
(Z5)-[:EN {}]->(McDonalds),
(Z6)-[:EN {}]->(McDonalds),
(Z7)-[:EN {}]->(McDonalds),
(Z8)-[:EN {}]->(McDonalds),
(Z9)-[:EN {}]->(McDonalds),
(Z10)-[:EN {}]->(McDonalds),
(Z11)-[:EN {}]->(McDonalds),
(Z12)-[:EN {}]->(McDonalds),
(Z13)-[:EN {}]->(McDonalds),
(Z14)-[:EN {}]->(McDonalds),
(Z15)-[:EN {}]->(McDonalds),
(Z16)-[:EN {}]->(McDonalds),
(Z17)-[:EN {}]->(McDonalds),
(Z18)-[:EN {}]->(McDonalds),
(Z21)-[:EN {}]->(McDonalds),


(Z10)-[:EN {}]->(Campero),
(Z11)-[:EN {}]->(Campero),
(Z12)-[:EN {}]->(Campero),
(Z21)-[:EN {}]->(Campero),
(Z16)-[:EN {}]->(Campero),
(Z17)-[:EN {}]->(Campero),
(Z7)-[:EN {}]->(Campero),
(Z8)-[:EN {}]->(Campero),
(Z3)-[:EN {}]->(Campero),
(Z1)-[:EN {}]->(Campero),
(Z5)-[:EN {}]->(Campero),
(Z4)-[:EN {}]->(Campero),
(Z6)-[:EN {}]->(Campero),
(Z9)-[:EN {}]->(Campero),
(Z2)-[:EN {}]->(Campero)

//relaciones de especialidades
CREATE

// panaderia
(Pan)-[:TIPO {}]->(LaBerna),
(Pan)-[:TIPO {}]->(Isopan),
(Pan)-[:TIPO {}]->(PanPavallier),
(Pan)-[:TIPO {}]->(SanMartín),


// Pizza
(Pizza)-[:TIPO {}]->(DominosPizza),
(Pizza)-[:TIPO {}]->(LittleCaesars),
(Pizza)-[:TIPO {}]->(PapaJohns),
(Pizza)-[:TIPO {}]->(Margherita),


// Burgers
(Burgers)-[:TIPO {}]->(HambuergesasDelPuente),
(Burgers)-[:TIPO {}]->(Wendys),
(Burgers)-[:TIPO {}]->(FriscoGrill),

// Tacos
(Tacos)-[:TIPO {}]->(ElCamioncito),
(Tacos)-[:TIPO {}]->(ElPinche),
(Tacos)-[:TIPO {}]->(Lasflautas),

// Steak House
(Steak)-[:TIPO {}]->(DondeJoselito),
(Steak)-[:TIPO {}]->(LaEstancia),
(Steak)-[:TIPO {}]->(CasaEscobar),

// Comida tipica
(Tipica)-[:TIPO {}]->(Caldos),
(Tipica)-[:TIPO {}]->(ElRinconTipico),
(Tipica)-[:TIPO {}]->(Arrincuan),

//Cafe
(Coffe)-[:TIPO {}]->(Starbucks),
(Coffe)-[:TIPO {}]->(CafeBarista),
(Coffe)-[:TIPO {}]->(CaféGitane),

//Pasta
(Pastas)-[:TIPO {}]->(TreFratelli),
(Pastas)-[:TIPO {}]->(Margherita),

// Sushi
(Sushi)-[:TIPO {}]->(MrSushi),
(Sushi)-[:TIPO {}]->(PFChang),
(Sushi)-[:TIPO {}]->(Sushimon),

// Mariscos
(Mariscos)-[:TIPO {}]->(PuertoBarrios),
(Mariscos)-[:TIPO {}]->(LosDelfines),
(Mariscos)-[:TIPO {}]->(LaTrampa),

// Donas
(Donas)-[:TIPO {}]->(Dunkin),
(Donas)-[:TIPO {}]->(KrispyKreme),

// China
(China)-[:TIPO {}]->(PFChang),
(China)-[:TIPO {}]->(Panda),
(China)-[:TIPO {}]->(JKming),

// Sanwiches
(Panes)-[:TIPO {}]->(Panitos),
(Panes)-[:TIPO {}]->(SubWay),

// Comida Rapida
(Fast)-[:TIPO {}]->(Panda),
(Fast)-[:TIPO {}]->(TacoBell),
(Fast)-[:TIPO {}]->(McDonalds),
(Fast)-[:TIPO {}]->(SubWay),
(Fast)-[:TIPO {}]->(Campero)


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
(Z2)-[:CERCA {}]->(Z18),

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
(Z6)-[:CERCA {}]->(Z18),

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
(Z9)-[:CERCA {}]->(Z10),

// Relaciones: Zona 10
(Z10)-[:CERCA {}]->(Z5),
(Z10)-[:CERCA {}]->(Z9),
(Z10)-[:CERCA {}]->(Z14),
(Z10)-[:CERCA {}]->(Z15),


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

// Relaciones: Zona 17
(Z17)-[:CERCA {}]->(Z16),
(Z17)-[:CERCA {}]->(Z18),

// Relaciones: Zona 18
(Z18)-[:CERCA {}]->(Z17),
(Z18)-[:CERCA {}]->(Z2),
(Z18)-[:CERCA {}]->(Z6),

// Relaciones: Zona 21
(Z21)-[:CERCA {}]->(Z12)
