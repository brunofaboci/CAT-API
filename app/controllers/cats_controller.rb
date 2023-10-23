class CatsController < ApplicationController

  def index
    @cats = Cat.search(params[:query])
  end
end
