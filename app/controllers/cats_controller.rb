class CatsController < ApplicationController

  def index
    cats = Cat.pagy_search(params[:query])

    @pagy, @cats = pagy_meilisearch(cats, items: 5)
  end
end
