require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')

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
  animal = Animal.find(params['id'])
  animal.save()
  redirect to ('/:id')
end
