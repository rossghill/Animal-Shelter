require_relative('../db/sqlrunner')

class AnimalType

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO animal_types(name)
          VALUES ($1)
          RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0].to_id    
  end

end
