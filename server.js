const express = require('express');
const app = express();
const PORT = 3000;
const version = 2.0;

app.get('/', (req, res) => {
  //res.send(`<h1>🚀 Versión ${version} de la aplicación - Estable y Funcionando</h1>`);
  res.send(`<h1>🚨 Versión ${version} - TODO ESTÁ ROTO EN PRODUCCIÓN</h1>`);
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});