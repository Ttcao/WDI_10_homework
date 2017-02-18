var express = require('express');
var app = express();
const PORT = 3000;

app.set('views', './views');

app.set('view engine', 'ejs');

// allows express to see the public folder
app.use(express.static('public'));

app.get('/', function(request, response) {
  response.render('searchpage');
});

app.listen(PORT, function() {
});
