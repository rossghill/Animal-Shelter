require_relative('../db/sqlrunner')

class Owner

  def method_name(options)
    @id = options["id"].to_i
    @name = options["name"]
  end

end
