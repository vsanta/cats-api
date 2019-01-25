class CatRepository < Hanami::Repository
  associations do
    has_one :breed
  end

  def create_with_breed(data)
    assoc(:breed).create(data)
  end

  def all_with_breed
    aggregate(:breed).map_to(Cat).to_a
  end
end
