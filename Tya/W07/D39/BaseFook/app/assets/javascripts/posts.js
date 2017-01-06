$(document).ready(function(){

  var addPost = function(){
    // saves to the database
    var settings = {
      url: '/posts',
      data: {
        'post[text]': $('#post-text').val()
        // the post-text.val() is what is sent to the server
      },
      method: 'post',
      dataType: 'json'
      }

    // the response is information retrieved from server
    $.ajax(settings).done(function(response) {
      var $liElement = $('<li>');
      $liElement.append("<p>" + response.text + "</p>")
      $('#post-list').append($liElement);
      // console.log(response);
      // console.log(response.text);

    });
  };

  var addComment = function(e) {
    // var $commentWall = $(e.target).closest('ul');
    $parentLi = $(e.target).closest('li');
    var settings = {
      url: '/comments',
      data: {
        'comment[text]': $parentLi.find('textarea').val(),
        'comment[post_id]': $parentLi.data().postId
      },
      method: 'post',
      dataType: 'json'
    }

    $.ajax(settings).done(function(response) {
        // console.log(response);
        var $liElement = $('<li>');
        $liElement.append("<p>" + response.text + "</p>")
        $parentLi.find('ul').append($liElement);
    });

  }



  // add event listener for posts
  $('#add-post').on('click', addPost);

  // add event listener for posts
  $('.add-comment').on('click', addComment);

});
