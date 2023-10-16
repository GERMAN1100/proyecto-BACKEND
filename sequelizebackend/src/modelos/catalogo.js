const { DataTypes } = require('sequelize');
const sequelize = require('../conexiones/connection');

const Catalogo = sequelize.define('Catalogo', {
  idCatalogo: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  Titulo: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },
  Resumen: {
    type: DataTypes.TEXT,
  },
  Poster: {
    type: DataTypes.STRING(255),
  },
  fechaDeEstreno: {
    type: DataTypes.STRING(10),
  },
  nombreCategoria: {
    type: DataTypes.STRING(20),
  },
  idCategoria: {
    type: DataTypes.INTEGER,
  },
}, {
  tableName: 'Catalogo',
  timestamps: false,
  foreignKey: {
    name: 'idCategoria',
    allowNull: false,
  },
});


module.exports = Catalogo;