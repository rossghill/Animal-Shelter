require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

get '/adoptions/index' do
  erb(:"adoptions/index")
end

# Select owner and animal
get '/adoptions/adopt' do
  @animals = Animal.all
  @owners = Owner.all
  erb(:"adoptions/adopt")
end

# Update
post '/adoptions' do
  adoption = Adoption.new(params)
  adoption.save()
  redirect to ("/animals/index")
end
