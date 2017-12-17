require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')

get '/animals/index' do
  @animals = Animal.all()
  erb(:"animals/index")
end

# get 'animals/index/:id/edit' do
#   @animals = Animal.find(params['id'])
#   erb(:edit)
# end

# get 'animals/:id' do
#   @animal = Animal.find(params['id'])
#   erb(:"animals/show")
# end

get '/animals/4' do
  @animal = Animal.find(params['id'])
  erb(:"animals/show")
end
