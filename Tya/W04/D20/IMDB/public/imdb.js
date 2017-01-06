$(document).ready(function(){

  var addCookie = function(){
    var settings = {
      url: '/cookies',
      data: {
        'cookie[name]': $('#name-input').val(),
        'cookie[description]': $('#description-input').val(),
        'cookie[price]': '2',
        'cookie[tasty]': false
      },
      method: 'post',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response) {
      var $liElement = $('<li>');
      var $strongElement = $('<strong>');
      $strongElement.append(response.name)
      $liElement.append($strongElement);
      $liElement.append(": " + response.description)
      $('#cookies-list').append($liElement);
    });
  };

  // delete cookie
  var deleteCookie = function(e){
    var $cookie = $(e.target).closest('li');
    var settings = {
      url: '/cookies/' + $cookie.attr('data-id'),
      data: {
        id: $cookie.attr('data-id'),
        '_method': 'delete'
      },
      method: 'post'
    };

    $.ajax(settings).done(function(response) {
      $cookie.remove();
    });
  };

  // add cookie button event listener
  $('#add-cookie').on('click', addCookie);

  // delete cookie button event listener
  $('#delete-cookie').on('click', deleteCookie);
});
