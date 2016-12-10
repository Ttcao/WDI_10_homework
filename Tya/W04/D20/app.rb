require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

# Movies I
# Specification

# Build a search form that lets the user enter a movie name. The Sinatra app will use HTTParty to fetch the data for the chosen movie from OMDB and display it on the page.

get '/' do
  @movie_title = params[:movie]
  @result = HTTParty.get('http://omdbapi.com/?t=@movie_title')
  erb :index
end
