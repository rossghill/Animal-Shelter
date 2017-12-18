require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner')
require_relative('../models/animal')

#List all
get '/owners/index' do
  @owners = Owner.all()
  @animals = Animal.all()
  erb(:"owners/index")
end
