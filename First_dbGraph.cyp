CREATE (luis:person {name:"Luis"})
CREATE (felipe:person {name:"Felipe"})
CREATE (carlos:person {name:"Carlos"})
CREATE (andres:person {name:"Andres"})
CREATE (ud:universidad {name:"U_Distrital"})
CREATE (jave:universidad {name:"U_Javeriana"})
CREATE (futbol:deporte {name:"Futbol"})
CREATE (tenis:deporte {name:"Tenis"})
CREATE (ing_sistemas:carrera {name:"Ingenieria en Sistemas"})
CREATE (ing_electronica:carrera {name:"Ingenieria en Electronica"})
CREATE (calc_diferencial:materia {name:"Calculo Diferencial"})
CREATE (luis)-[:FRIENDS]->(felipe)
CREATE (felipe)-[:FRIENDS]->(carlos)
CREATE (luis)-[:FRIENDS]->(andres)
CREATE (luis)-[:FRIENDS]->(carlos)
CREATE (luis)-[:STUDENT]->(ud)
CREATE (felipe)-[:STUDENT]->(jave)
CREATE (carlos)-[:STUDENT]->(ud)
CREATE (andres)-[:STUDENT]->(jave)
CREATE (luis)-[:SUBJECT]->(calc_diferencial)
CREATE (carlos)-[:SUBJECT]->(calc_diferencial)
CREATE (andres)-[:SUBJECT]->(calc_diferencial)
CREATE (felipe)-[:SUBJECT]->(calc_diferencial)
CREATE (luis)-[:PLAYER]->(futbol)
CREATE (andres)-[:PLAYER]->(futbol)
CREATE (felipe)-[:PLAYER]->(tenis)
CREATE (luis)-[:CAREER]->(ing_sistemas)
CREATE (felipe)-[:CAREER]->(ing_electronica)
CREATE (carlos)-[:CAREER]->(ing_electronica)
CREATE (andres)-[:CAREER]->(ing_sistemas)

MATCH(n) RETURN n



MATCH (luis:person {name:"Luis"})
SET luis.birthday = date("2021")
RETURN luis


MATCH (luis:person {name:"Luis"})
SET luis.name = "Esteban"
RETURN luis

CREATE (oscar:person {name:Oscar})
MATCH (oscar:person {ud:universidad})
WHERE oscar.name = "Oscar" AND ud.name = "U_Distrital"

CREATE (oscar)-[:STUDENT]->(ud)



MATCH(n) RETURN n