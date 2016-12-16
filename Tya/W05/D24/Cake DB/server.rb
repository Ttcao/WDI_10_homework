# 1. Create the project folder with the subfolders: views, models, config
# 2. Create a Gemfile that includes all the necessary Gems
# 3. Create a Rakefile that requires the correct gems
# 4. Run bundle install
# 5. Create a config/database.yml file that defines a development database
# 6. Run rake db:create to create your database
# 7. Design a simple table of your model. Sketch out the model name and the properties you want to store.
# 8. Generate a new migration (rake db:create_migration) for said table
# 9. Go into that migration, and write a create_table statement that includes all the fields for your model
# 10. Run rake db:migrate to run your migration
# 11. Create a new model class for the new model, in /models
# 12. Include that model class in your server.rb file
# 13. Now, in your server.rb file, create a route handler for:
#    - getting all instances of your model class
#    - getting an individual instance of your model class
#    - creating a new instance of your model class

require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'
require 'sinatra/activerecord'
require 'pg'
require_relative 'models/cake'

# index page shows all instances of cake models in database
get '/cakes' do
  @cakes = Cake.all
  erb :cakes
end

# show single cake page
get '/cake/:id' do
  @cake = Cake.find(@params['id'])
  erb :cake
end

# add entry to database
post '/cakes' do
  @cake = Cake.new(@params)
  @cake.save
  redirect to('/cakes')
end

# edit entry in database


# delete entry in database
