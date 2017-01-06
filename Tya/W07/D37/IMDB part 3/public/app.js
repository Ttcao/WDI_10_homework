$(document).ready(function(){

  var showList = function(){
    var settings = {
      url: 'http://omdbapi.com/?s=' + $('#movie').val(),
      method: 'get',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response) {
      // console.log(response)
      // for(var i=)
      var $liElement = $('<li>');
      $liElement.append("<p>" + response.text + "</p>")
      $('#movie-list').append($liElement);
    });

    return false;
  };

  // event listener submit button
  $('#search-movie').on('click', showList);

});
