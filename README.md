# PROYECTO BACKEND

# ENDPOINTS

# /CATEGORIAS

En este endpoint, se busca que al ingresarlo, nos traiga  como resultado los distintos tipos de Categorias que existen, en este caso el resultado sera:

/categorias

idCategoria 1, nombreCategoria: Serie;

idCategoria 2, nombreCategoria: Pelicula;

Al traerme el resultado correcto, me dara un status de 200 OK.

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje 'Error en el servidor'


# /CATALOGO

En este endpoint, se busca que al ingresarlo, nos traiga  como resultado, el catalogo completo existente, tal y como esta en el archivo json, osea, toda la informacion:

idCatalogo, Titulo, Resumen, Poster, idCategoria, Generos, y por ultimo Actores.

En el caso de ingresar bien al endpoint nos dara un status de 200 OK y toda la informacion del catalogo se presentara.

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje, 'Error en el servidor'

# /CATALOGO/TITULOS

Este endpoint se agrego, para que simplemente traiga como resultado todos los titulos que existen en el catalogo.

En el caso de ingresar bien al endpoint nos dara un status de 200 OK, junto con la informacion correcta.

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje, 'Error interno del servidor'


# /CATALOGO/TITULOS/:id

Este endpoint esta creado, para que se pueda buscar titulos por su ID, de esta forma, al ingresar un numero del 1 al 35, que son todos los titulos que existen en el catalogo, nos traera como resultado aquel que busquemos, junto con toda su informacion.

/catalogo/tiutlos/4 (nos traera el titulo y toda su informacion)

En el caso de ingresar bien al endpoint nos dara un status de 200 OK, junto con la informacion correcta.

En el caso de ingresar un ID que no exista en el catalogo, este nos dara un status 404 con el mensaje, "Elemento no encontrado".

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje, 'Error interno del servidor'.


# /CATALOGO/FILTRADOTITULOS/:TITULOS

Este endpoint esta creado, para que se pueda buscar en el catalogo por titulos, de esta forma, al ingresar un titulo del catalogo, nos traera como resultado aquel que busquemos, junto con toda su informacion.
por ejemplo:

/catalogo/Filtradotitulos/friends (traera toda la informacion de este titulo).

En el caso de ingresar bien al endpoint nos dara un status de 200 OK, junto con la informacion correcta.

En el caso de ingresar un titulo que no exista en el catalogo, este nos dara un status 404 con el mensaje, " Titulo no encontrado".

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje, 'Error interno del servidor'


# /CATALOGO/FILTRADOCATEGORIA/:CATEGORIA

Este endpoint esta creado, para que se pueda buscar en el catalogo por su categoria, por lo tanto, al ingresar una de las 2 categorias existentes (serie o pelicula), nos traera como resultado todos los titulos que contengan esa misma, junto con toda su informacion.

por ejemplo:

/catalogo/FiltradoCategoria/Serie (traera todos titulos con categoria serie).

En el caso de ingresar bien al endpoint nos dara un status de 200 OK, junto con la informacion correcta.

En el caso de ingresar una categoria que no exista en el catalogo, este nos dara un status 404 con el mensaje, 'No se encontraron titulos para la categoria especificada'.

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje, 'Error interno del servidor'.

# /CATALOGO/GENEROS/:GENERO

Este endpoint esta creado, para que se pueda buscar en el catalogo por su genero, entonces, al ingresar cualquiera de estos  existentes del catalogo, nos traera como resultado todos los titulos que contengan ese mismo genero, junto con toda su informacion.

por ejemplo:

/catalogo/generos/Ficcion (traera todos titulo con el genero Ficción).

En el caso de ingresar bien al endpoint nos dara un status de 200 OK, junto con la informacion correcta.

En el caso de ingresar un genero que no exista en el catalogo, este nos dara un status 404 con el mensaje: 'No se encontraron títulos para el género especificado.'.

En el caso de existir un error en el servidor, me dara un status de 500 con el mensaje, 'Hubo un error al buscar los Titulos'.

# LISTA DE ENDPOINTS:

/categorias

/catalogo

/catalogo/TITULO

/catalogo/titulos/:id

/catalogo/Filtradotitulos/:titulo

/catalogo/FiltradoCategoria/:Categoria

/catalogo/generos/:genero

