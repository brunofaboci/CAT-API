class CatApiService
  include HTTParty

  def initialize
    qtd_imgs = 100
    api_key = 'live_XJEYCUVTgIVnLQRZrqgHsh2LVu40dZT9gEe1xvR8DFmLaQbUNtoXUmGuhgt3Kq5P'
    @base_url = "https://api.thecatapi.com/v1/images/search?limit=#{qtd_imgs}&has_breeds=1"
    @options = {
      headers: {
        'x-api-key': api_key
      }
    }
  end

  def fetch_cats
    response = self.class.get("#{@base_url}", @options)

    if response.success?
      cats = response.parsed_response
    else
      rails 'Erro na solicitação da API'
    end

    return unless cats.any?

    cats.each do |cat|
      next if Cat.where(api_id: cat['id']).exists?

      Cat.create!(
      api_id: cat['id'],
      name: cat['breeds'][0]['name'],
      description: cat['breeds'][0]['description'],
      weight: cat["breeds"][0]['weight']['metric'],
      temperament: cat['breeds'][0]['temperament'],
      origin: cat['breeds'][0]['origin'],
      country_code: cat['breeds'][0]['country_code'],
      life_span: cat['breeds'][0]['life_span'],
      url: cat['url']
    )
    end
  end
end
