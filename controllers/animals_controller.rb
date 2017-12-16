require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')

get '/animals/index' do
  @animals = Animal.all()
  erb(:"animals/index")
end

# get 'animals/:id/edit' do
#   @animals = Animal.find(params['id'])
#   erb(:edit)
# end
