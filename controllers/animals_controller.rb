require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')

#List all
get '/animals/index' do
  @animals = Animal.all()
  erb(:"animals/index")
end

#List individual
get '/animals/:id' do
  @animal = Animal.find(params['id'])
  erb(:"animals/show")
end

#Edit
get 'animals/:id/edit' do
  @animal = Animal.find(params['id'])
  erb(:"animals/edit")
end

#Update
post 'animals/:id' do
  animal = Animal.find(params['id'])
  animal.save()
  redirect to ('/:id')
end

#Delete
post 'animals/:id' do
  animal = Animal.find(params['id'])
  animal.delete()
  redirect to ('/index')
end
