const express = require('express');
const app = express();
const port = 3000;

app.get('/', function(req,res){
  res.send('Belajar docker');
});

app.listen(port, function () {
  console.log('Listening on port 3000!')
});