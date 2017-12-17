require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner')

#List all
get '/owners/index' do
  @owners = Owner.all()
  erb(:"owners/index")
end
