require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/animals_controller')
require_relative('controllers/adoptions_controller')
require_relative('controllers/animal_type_controller')
require_relative('controllers/owner_controller')

get '/' do
  erb( :index )
end
