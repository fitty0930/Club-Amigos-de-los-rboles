# ClubAmigosDeLosArboles
Práctica para el trabajo final de Web 2.

CONSIGNA:

El club amigos de los árboles nos solicita que desarrollemos una aplicación web para registrar los especímenes que se encuentran plantados por la ciudad. la base de datos consta de las tablas

Arbol: (id_arbol: int, id_especie: int, $descripcion: varchar, latitud: int, longitud int, señalizado: bool, año_plantado: int)
Especie: (id_especie: int, nombre:varchar, $descripcion: varchar)

Siendo $arboles un arreglo de objetos arbol(id_arbol, id_especie, descripción, latitud, longitud, señalizado, año_plantado, especie), escribir la vista y la plantilla smarty asociadas. Debe mostrar al menos la especie, descripción, si esta señalizado, y la edad de cada árbol.}

Implementar la clase correspondiente al Controller para un servicio REST que brinde el arreglo de árboles del ejercicio anterior. Suponga que el modelo está implementado.

Indique en qué parte de la arquitectura MVC y en qué clase debería estar implementada cada función. explique su razonamiento y justifique:
actualizar($id_arbol, $id_especie, $descripcion, $latitud, $longitud, $señalizado)
mostrarArboles($arboles)
agregarEspecie()
editarDetalles($arbol)

Implemente las funciones del modelo para obtener:
el vector $árboles del ejercicio anterior
cantidad de árboles de una especie
lista de especies en extinción. (menos de 10 ejemplares)
lista de árboles no señalizados 
lista de árboles dentro de una zona dada
(Nota: una zona se define como un cuadrado con latitudes y longitudes minimas y maximas.) 


