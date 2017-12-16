require_relative('../db/sqlrunner')

class AnimalType

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

end
