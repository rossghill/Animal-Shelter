class Adoption

  def initialize(options)
    @id = options['id'].to_i
    @adoption_date = options['adoption_date']
    @owner_id = options ['owner_id'].to_i
    @animal_id = options ['animal_id'].to_i
  end

end
