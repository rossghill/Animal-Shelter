require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

get '/' do
  erb(:index)
end

#List all
get '/animals/index' do
  @animals = Animal.all()
  erb(:"animals/index")
end

#List individual
get '/animals/:id' do
  @animal = Animal.find(params['id'].to_i)
  erb(:"animals/show")
end

#Edit
get '/animals/:id/edit' do
  @animal = Animal.find(params['id'].to_i)
  erb(:"animals/edit")
end

#Update
post '/animals/:id' do
  animal = Animal.new(params)
  animal.update()
  redirect to ("/animals/index")
end
