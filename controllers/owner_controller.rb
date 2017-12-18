require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner')

#List all
get '/owners/index' do
  @owners = Owner.all()
  @animals = Animal.all()
  erb(:"owners/index")
end
