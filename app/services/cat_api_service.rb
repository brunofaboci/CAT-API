class CatApiService
  include HTTParty

  def initialize(api_key, qtd_imgs)
    @base_uri = "https://api.thecatapi.com/v1/images/search?limit=#{qtd_imgs}&has_breeds=1"
    @options = {
      headers: {
        'x-api-key': api_key
      }
    }
  end

  def fetch_cats
    response = self.class.get("#{@base_uri}", @options)

    if response.success?
      response.parsed_response
    else
      rails 'Erro na solicitação da API'
    end
  end
end
