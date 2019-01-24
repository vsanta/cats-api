module Api::Controllers::Cats
  class Index
    include Api::Action
    include JSONAPI::Hanami::Action

    # expose :cats

    def call(params)
      self.data = CatRepository.new.all
      # @cats =
    end
  end
end
