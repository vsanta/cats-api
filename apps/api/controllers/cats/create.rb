module Api::Controllers::Cats
  class Create
    include Api::Action
    accept :json
    expose :cat

    def call(params)
      @cat = CatRepository.new.create(params[:cat])
    end
  end
end
