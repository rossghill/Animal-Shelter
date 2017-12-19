require_relative('../db/sqlrunner')

class Animal

  attr_reader(:id, :name, :admission_date, :adoptable, :animal_type, :adoption_status)

  def initialize(options)
    @id = options['id'].to_i if options['id']
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

  def self.all
    sql = "SELECT * FROM animals"
    values = []
    returned_hash = SqlRunner.run(sql, values)
    result_array = returned_hash.map { |animal| Animal.new(animal) }
    return result_array
  end

  def self.find(id)
    sql = "SELECT * FROM animals
          WHERE id = $1"
    values = [id]
    returned_animal = SqlRunner.run(sql, values).first()
    animal = Animal.new(returned_animal)
    return animal
  end

  def update
    sql = "UPDATE animals SET
          (name, admission_date, adoptable, animal_type, adoption_status) =
          ($1, $2, $3, $4, $5)
          WHERE id = ($7)"
    values = [@name, @admission_date, @adoptable, @animal_type, @adoption_status, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM animals
          WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM animals"
    values = []
    result = SqlRunner.run(sql, values)
  end

end
