require 'hanami/interactor'

class AddCatWithBreed
  include Hanami::Interactor
  expose :cat

  def call(cat_attributes)
    @cat = CatRepository.new.create_with_breed(cat_attributes)
  end

end
