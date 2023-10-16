const sequelize = require('./src/conexiones/connection');
const Catalogo = require('./src/modelos/catalogo');
const Categorias = require('./src/modelos/categorias');
const VistacatalogoGeneros = require('./src/modelos/vistacatalogogenero')
const VistaCatalogo = require ('./src/modelos/vistaunida')
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3008
// const PORT = 3000

app.use(express.json());
//ENDPOINT CATEGORIAS , 
app.get ("/categorias", async (_req, res) =>{
    try {
      await sequelize.authenticate();
      console.log('Conexión exitosa a la base de datos.');
      await Categorias.sync();
      const allcategorias = await Categorias.findAll();
      res.status(200).json(allcategorias);
  
    } catch (error) {
      res.status(500).json({ error: 'error en el servidor', descripcion: error.message });
    }
  })

  
// ENDPOINT CATALOGO sin reparto.
  // app.get ("/catalogo", async (_req, res) =>{
  //   try {
  //     await sequelize.authenticate();
  //     console.log('Conexión exitosa a la base de datos.');
  //     await Catalogo.sync();
  //     const allCatalogo= await Catalogo.findAll();
      
  //       res.status(200).json(allCatalogo);
  //     } 
    
  //   catch (error) {
  //     res.status(500).json({ error: 'error en el servidor', descripcion: error.message });
  //   }
  // })

  app.get("/catalogo", async (_req, res) => {
    try {
      // Asegúrate de que la conexión a la base de datos esté configurada correctamente
      await sequelize.authenticate();
      console.log('Conexión exitosa a la base de datos.');
  
      // No necesitas sincronizar ni autenticar el modelo Catalogo, ya que deseas acceder a la vista.
  
      // Realiza una consulta para obtener todos los elementos desde la vista
      const allCatalogo = await VistaCatalogo.findAll();
  
      res.status(200).json(allCatalogo);
    } catch (error) {
      res.status(500).json({ error: 'Error en el servidor', descripcion: error.message });
    }
  });



//ESTE TRAE TODOS LOS TITULOS.  anda bien
  app.get('/catalogo/TITULOS', async (req, res) => {
    try {
      const titulos = await Catalogo.findAll({
        attributes: ['Titulo'], // Solo selecciona el campo 'Titulo'
      });
      res.status(200).json(titulos);
    } catch (error) {
      console.error('Error al obtener los títulos:', error);
      res.status(500).send('Error interno del servidor');
    }
  });

  
// ESTE TRAE POR ID   
app.get('/catalogo/titulos/:id', async (req, res) => {
  const { id } = req.params;
  try {
    const Elemento = await Catalogo.findByPk(id);
    if (Elemento) {
      res.status(200).json(Elemento);
    } else {
      res.status(404).send('Elemento no encontrado');
    }
  } catch (error) {
    console.error('Error al buscar por ID:', error);
    res.status(500).send('Error interno del servidor');
  }
});

//BUSCA POR filtra por titulo       
app.get('/catalogo/Filtradotitulos/:titulo', async (req, res) => {
  const { titulo } = req.params;
  try {
    const elemento = await Catalogo.findOne({
      where: { Titulo: titulo },
    });
    if (elemento) {
      res.status(200).json(elemento);
    } else {
      res.status(404).send('Titulo no encontrado');
    }
  } catch (error) {
    console.error('Error al buscar por título:', error);
    res.status(500).send('Error interno del servidor');
  }
});



//FILTRADO POR CATEGORIA 
app.get('/catalogo/FiltradoCategoria/:Categoria', async (req, res) => {
  const { Categoria } = req.params;
  try {
    const titulo = await Catalogo.findAll({
      where: {
        nombreCategoria: Categoria,
      },
    });
    if (titulo.length > 0) {
      res.status(200).json(titulo);
    } else {
      res.status(404).send('No se encontraron titulos para la categoria especificado');
    }
  } catch (error) {
    console.error('Error al buscar por Categoria', error);
    res.status(500).send('Error interno del servidor');
  }
});



// filtra por genero este anda
app.get('/catalogo/generos/:genero', async (req, res) => {
  try {
    const genero = req.params.genero; // Obtén el género desde los parámetros de la ruta.
   
    // Realiza la consulta a la vista filtrando por el género.
    const Titulo = await VistacatalogoGeneros.findAll({
      where: {
      nombreGenero: genero
      }
    });
if (Titulo.length === 0) {
  res.status(404).send('No se encontraron títulos para el género especificado.');
} else {
  res.status(200).json(Titulo);
}}
   
   catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Hubo un error al buscar los Titulos.' });
  }
});

app.listen(3008, () => {
  console.log('Servidor en funcionamiento en el puerto 3008');
});
