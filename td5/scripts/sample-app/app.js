const express = require('express');

const app = express();
app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.send('Hello, World!');
  res.send('\nDevOps Labs!');
});

app.get('/name/:name', (req, res) => {
  res.render('hello', {name: req.params.name});
});

module.exports = app;