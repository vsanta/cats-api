module Api::Views::Cats
  class Index
    include Api::View

    def render
      raw JSON.dump(cats.map {|cat| cat.to_h})
    end
  end
end
