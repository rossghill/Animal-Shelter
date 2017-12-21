require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner')
require_relative('../models/animal')

#List all
get '/owners/index' do
  @owners = Owner.all()
  erb(:"owners/index")
end

# New owner
get '/owners/new' do
  erb(:"owners/new")
end

post '/owners/index' do
  owner = Owner.new(params)
  owner.save()
  redirect to ("/owners/index")
end
