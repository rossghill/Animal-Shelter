require_relative('../db/sqlrunner')

class Adoption

  attr_reader(:id, :adoption_date, :owner_id, :animal_id)

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
    @id = result[0]['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM adoptions"
    values = []
    returned_hash = SqlRunner.run(sql, values)
    result_array = returned_hash.map { |adoption| Adoption.new(adoption) }
    return result_array
  end

  def self.delete_all
    sql = "DELETE FROM adoptions"
    values = []
    result = SqlRunner.run(sql, values)
  end

end
