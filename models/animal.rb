require_relative('../db/sqlrunner')

class Animal

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @admission_date = options['admission_date']
    @adoptable = options['adoptable']
    @animal_type = options['animal_type']
    @adoption_status = options['adoption_status']
  end

end
