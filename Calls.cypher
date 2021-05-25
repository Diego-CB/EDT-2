MATCH (u:Ubicacion {name: "Zona 14"})
CALL (u, "CERCA", 1)
YIELD node
RETURN node


match (n:any)-[:Ubicacion]->[name="Zona 5"] return n



match (n:any)-[:Ubicacion]-[:"CERCA"]->(u:Ubicacion{name:"Zona 14"}) return any

match (n:Ubicacion{name:"Zona 14"}) 