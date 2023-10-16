const Sequelize = require('sequelize');
const sequelize = require('../conexiones/connection');

const Vista_Catalogo_Generos = sequelize.define('Vista_Catalogo_Generos', {
  idGenCatalogo: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  Titulo: Sequelize.STRING,
  Resumen: Sequelize.STRING,
  Poster: Sequelize.STRING,
  fechaDeEstreno: Sequelize.STRING,
  nombreCategoria: Sequelize.STRING,
  nombreGenero: Sequelize.STRING,
}, {
  tableName: 'Vista_Catalogo_Generos',
  timestamps: false // Indica que la vista no tiene marcas de tiempo.
});

module.exports = Vista_Catalogo_Generos;
module.exports = Vista_Catalogo_Generos;
