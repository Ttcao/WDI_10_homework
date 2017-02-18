var express = require('express');
var app = express();
const PORT = 3000;

var pg = require('pg');
const POKEMON = require('pokemontcgsdk');

app.set('views', './views');
app.set('view engine', 'ejs');

app.use(express.static('public'));

app.get('/', function(request, response) {
  response.render('showcards')
});

// post to the database
// app.post('/', function(request, response){
//     console.log(request.body.user.name);
//     console.log(request.body.user.email);
// });


app.listen(PORT, function() {
});

var request = require('request');
request('https://api.pokemontcg.io/v1/cards', function (error, response, body) {
  if (!error && response.statusCode == 200) {
    JSON.parse(body).cards[0]
    // console.log(body) // Lists all the pokemon
  }
})

// POKEMON.card.find('base1-4')
// .then(result => {
//     console.log(result.card.name) // "Charizard"
// })
