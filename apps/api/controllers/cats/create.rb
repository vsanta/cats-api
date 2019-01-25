module Api::Controllers::Cats
  class Create
    include Api::Action
    accept :json
    expose :cat

    def call(params)
      @cat = AddCatWithBreed.new.call(params[:cat]).cat
    end
  end
end
