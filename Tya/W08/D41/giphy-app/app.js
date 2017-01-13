var count = 0;
var getGiphy = function() {
    var giphy = $('#search').val().replace(/ /g, "+");
    var settings = {
        url: 'http://api.giphy.com/v1/gifs/search?',
        data: {
            q: giphy,
            limit: 10,
            api_key: "dc6zaTOxFJmzC"
            // offset:
        },
        method: 'get',
        dataType: 'json',
    }
    $.ajax(settings).done(function(response) {
        var giphys = response.data
        giphys.forEach(function(giphy) {
            var html = Handlebars.templates.giphy({
                embed: giphy.embed_url,
            })
            $('#list').append(html);
        })
    });

};

$('button').on('click', getGiphy);
