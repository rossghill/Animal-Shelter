require_relative('../db/sqlrunner')

class Owner

  attr_reader(:id, :name)

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
  end

  def save
    sql = "INSERT INTO owners (name)
          VALUES ($1)
          RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def delete()
    sql = "DELETE FROM owners
          WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM owners"
    values = []
    result = SqlRunner.run(sql, values)
  end

  def self.find(id)
    sql = "SELECT * FROM owners
          WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first()
    owner = Owner.new(result)
    return owner
  end

end
