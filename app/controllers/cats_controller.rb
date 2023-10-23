class CatsController < ApplicationController

  def index
    api_key = 'live_XJEYCUVTgIVnLQRZrqgHsh2LVu40dZT9gEe1xvR8DFmLaQbUNtoXUmGuhgt3Kq5P'
    qtd_imgs = 100

    cat_service = CatApiService.new(api_key, qtd_imgs)

    @cats = cat_service.fetch_cats
  end
end
