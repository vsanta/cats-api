module Api::Controllers::Cats
  class Index
    include Api::Action
    expose :cats

    def call(params)
      @cats = CatRepository.new.all
    end
  end
end
