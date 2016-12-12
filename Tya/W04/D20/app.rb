require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

# Movies I
# Specification

# Build a search form that lets the user enter a movie name. The Sinatra app will use HTTParty to fetch the data for the chosen movie from OMDB and display it on the page.

# display movie searches
get '/' do
  @movie_title = params[:movie]
  @result = HTTParty.get("http://omdbapi.com/?s=#{@movie_title}")
  binding.pry
  erb :index
end

# look through array and deal with each hash
# how to iterate through each 
# search results
# each 'search results' hash has arrays of movie hashes, with elements inside which are hashes

# display movie titles
# get '/about' do
#   erb :about
# end
