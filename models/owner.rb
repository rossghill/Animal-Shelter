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

end
