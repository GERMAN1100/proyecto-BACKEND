const { DataTypes } = require('sequelize');
const sequelize = require('../conexiones/connection');

const Categoria = sequelize.define('Categorias', {
  idCategoria: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nombreCategoria: {
    type: DataTypes.STRING(20), // Especifica la longitud máxima de la cadena
    allowNull: false,
  },
}, {
  tableName: 'Categorias',
  timestamps: false,
});

module.exports = Categoria;