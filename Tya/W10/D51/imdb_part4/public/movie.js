$(document).ready(function(){

  var showList = function(){
    var settings = {
      url: 'http://omdbapi.com/?s=' + $('#movie').val(),
      method: 'get',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response) {
        $('#movie-list').empty();
        response["Search"].forEach(function(movie){
          var $liElement = $('<li>');
          $liElement.append("<a href='http://www.imdb.com/title/" + movie['imdbID'] + "'>" + movie["Title"] + "</a>")
          $('#movie-list').append($liElement);
        })

    });

    // prevent HTML form from being submitted
    return false;
  };

  // event listener submit button
  $('#search-movie').on('click', showList);

});
