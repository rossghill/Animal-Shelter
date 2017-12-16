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

  def save
    sql = "INSERT INTO animals
          (name, admission_date, adoptable, animal_type, adoption_status)
          VALUES
          ($1, $2, $3, $4, $5)
          RETURNING id"
    values = [@name, @admission_date, @adoptable, @animal_type, @adoption_status]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

end
