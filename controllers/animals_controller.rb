require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')

get '/animals/index' do
  @animals = Animal.all()
  erb(:"animals/index")
end
