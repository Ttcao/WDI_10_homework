$(document).ready(function(){

  var showList = function(){
    var settings = {
      url: 'http://omdbapi.com/?s=' + $('#movie').val(),
      method: 'get',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response) {
        response["Search"].forEach(function(movie){
          var $liElement = $('<li>');
          $liElement.append("<p>" + movie["Title"] + "</p>")
          $('#movie-list').append($liElement);
        })

    });

    return false;
  };

  // event listener submit button
  $('#search-movie').on('click', showList);

});
