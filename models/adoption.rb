require_relative('../db/sqlrunner')

class Adoption

  def initialize(options)
    @id = options['id'].to_i
    @adoption_date = options['adoption_date']
    @owner_id = options ['owner_id'].to_i
    @animal_id = options ['animal_id'].to_i
  end

  def save
    sql = "INSERT INTO adoptions
          (adoption_date, owner_id, animal_id)
          VALUES
          ($1, $2, $3)
          RETURNING id"
    values = [@adoption_date, @owner_id, @animal_id]
    result =  SqlRunner.run(sql, values)
    @id = result[0].to_i      
  end

end
