class BreedRepository < Hanami::Repository
  associations do
    has_many :cats
  end
end
