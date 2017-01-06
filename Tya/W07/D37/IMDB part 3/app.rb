require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'

# https://gist.github.com/kasun-maldeni/0aaba93fdf7baf1d7e1d428225e87449/

get '/' do
  @movie_title = params[:movie]
    @result = HTTParty.get("http://omdbapi.com/?s=#{@movie_title}")
    erb :index
end

get '/movie/:movie' do
  @movie_title = params[:movie]
  @result_single = HTTParty.get("http://omdbapi.com/?t=#{@movie_title}")
  erb :single_title
end

not_found do
  "page not found"
end

# result = HTTParty.get('http://omdbapi.com/?t=once')

# look through array and deal with each hash
# how to iterate through each
# search results
# each 'search results' hash has arrays of movie hashes, with elements inside which are hashes

# display movie titles
# get '/about' do
#   erb :about
# end
