const Sequelize = require('sequelize');
const sequelize = require('../conexiones/connection');

const VistaCatalogo = sequelize.define('VistaCatalogo', {
  idCatalogo: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  Titulo: Sequelize.STRING,
  Resumen: Sequelize.TEXT,
  Poster: Sequelize.STRING(255),
  idCategoria: Sequelize.INTEGER,
  Generos: Sequelize.STRING, // El tipo de datos dependerá de tus necesidades
  Actores: Sequelize.STRING // El tipo de datos dependerá de tus necesidades
}, {
  tableName: 'vistacatalogo',
  timestamps: false // Indica que la vista no tiene marcas de tiempo.
});

module.exports = VistaCatalogo;