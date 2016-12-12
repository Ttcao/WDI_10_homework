require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  @movie_title = params[:movie]
  @result = HTTParty.get("http://omdbapi.com/?s=#{@movie_title}")
  puts @result["Search"][5]
  binding.pry
  erb :index

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
