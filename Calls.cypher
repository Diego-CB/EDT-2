// Codigo para obtener las zonas adyacentas a una zona
match (n:Ubicacion {name: "Zona 14"})-[:CERCA]->(cerca) return n, cerca

// Codigo para obtener los restaurante adyacentes a una zona específica
match (n:Ubicacion {name: "Zona 14"})-[:EN]->(cerca:Restaurante) return n, cerca

// Query's a utilizar en el proyecto---------------------------

// Codigo para obtener los restaurantes de una zona x y de las zonas adyacentes a la zona x
match (n:Ubicacion {name: "Zona 14"})-[:CERCA]->(cerca)
match (cerca)-[:EN]->(lugares:Restaurante) return lugares

// Codigo para obtener Restaurantes de cierta especialidad
match (n:Especialidad {name: "Panaderia"})-[:TIPO]->(tipo) return n, tipo

// Codigo para obtener los restaurantes de una zona x y de las zonas adyacentes a la zona x qeu cumplan con una y especialidad
match (n:Ubicacion {name: "Zona 14"})-[:CERCA]->(cerca)
match (cerca)-[:EN]->(lugares:Restaurante)<-[:TIPO]-(y:Especialidad {name: "Panaderia"})
return lugares
