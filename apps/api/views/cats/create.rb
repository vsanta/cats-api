module Api
  module Views
    module Cats
      class Create
        include Api::View
        def render
          raw JSON.dump(cat.to_h)
        end
      end
    end
  end
end
