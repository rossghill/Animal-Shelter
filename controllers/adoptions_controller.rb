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
  @animal = Animal.find(params['id'].to_i)
  @owner = Owner.find(params['id'].to_i)
  @adoptions = Adoptions.all()
  erb(:"adoptions/adopt")
end

# Update
post '/adoptions' do
  @all_animals = Animals.all()
  @all_owners = Owners.all()

  @adoptions =
  erb(:adopt)
end
