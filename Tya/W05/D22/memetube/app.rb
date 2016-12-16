# Memetube

# Create an app where users can add and view Youtube videos.

# From your homepage, the user can add a new video with a title, description, URL, and genre. The app should also let the user edit videos

require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

# user able to see list of videos
get '/' do
  db = PG.connect(dbname: 'youtube_db')
  @entries = db.exec("SELECT * FROM youtube_list;")
  db.close
  erb :index
end

# user able to add video entries
post '/' do
  db = PG.connect(dbname: 'youtube_db')
  db.exec("INSERT INTO youtube_list (title, description, url, genre) VALUES ('#{params[:title]}', '#{params[:description]}', '#{params[:url]}', '#{params[:genre]}'); ")
  db.close
  redirect to '/'
end

# route handler to edit page
get '/edit/:id' do
  db = PG.connect(dbname: 'youtube_db')
  @entry = db.exec("SELECT * FROM youtube_list WHERE id = #{params[:id]};")[0]
  db.close
  erb :edit_video
end

# routh handler updates video
post '/edit/:id' do
  db = PG.connect(dbname: 'youtube_db')
  @entry = db.exec("SELECT * FROM youtube_list WHERE id = #{params[:id]};")[0]
  db.exec("UPDATE youtube_list SET title = '#{params[:title]}', description = '#{params[:description]}', url = '#{params[:url]}', genre = '#{params[:genre]}'  WHERE id = #{params[:id]};")
  db.close
  redirect to "/"
end

# route handler deletes video
post '/delete/:id' do
  db = PG.connect(dbname: 'youtube_db')
  @entry = db.exec("SELECT * FROM youtube_list WHERE id = #{params[:id]};")[0]
  db.exec("DELETE FROM youtube_list WHERE id = #{params[:id]};")
  db.close
  redirect to "/"
end

not_found do
  "page not found"
end
