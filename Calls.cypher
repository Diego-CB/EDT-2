// Codigo para obtener las zonas adyacentas a una zona
match (n:Ubicacion {name: "Zona 14"})-[:CERCA]->(cerca) return n, cerca

// Codigo para obtener Restaurantes de cierta especialidad
match (n:Especialidad {name: "Panaderia"})-[:TIPO]->(tipo) return n, tipo

// Codigo para obtener los restaurante adyacentes a una zona específica
match (n:Ubicacion {name: "Zona 14"})-[:CERCA]->(cerca)
match cerca-[:EN]->(lugares:Restaurante) return lugares, cerca, n

//match (cerca)-[:EN]->(lugares:Restaurante) return lugares, cerca, n



// Codigo para obtener los restaurante adyacentes a una zona específica
match (n:Ubicacion {name: "Zona 14"})-[:EN]->(cerca:Restaurante) return n, cerca
