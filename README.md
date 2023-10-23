# README

rails version: 7.1
ruby version: 3.2.2

API: https://developers.thecatapi.com/view-account/ylX4blBYT9FaoVd6OhvR?report=bOoHBz-8t

API_KEY: para obter a key, é preciso acessar o site https://thecatapi.com/ e seguir os passos indicados.
  a key será enviada pro email cadastrado, depois basta substituir o valor da variavel "api_key" no CatApiService.


# Popular tabela Cat

pra popular a tabela é só rodar o comando "CatApiService.new().fetch_cats"

no bloco initialize do CatApiService tem uma variável chamada "qtd_imgs" que pode ser alterada a vontade.
é ela que define quantas imagens vão ser trazidas na request.

# Meilisearch
# Instalação

Para instalar o meilisearch, basta seguir a documentação:

https://www.meilisearch.com/docs/learn/getting_started/installation#installation

Após a instalação, executar o seguinte comando:

curl -L https://install.meilisearch.com | sh

# Execução

No comando abaixo, o valor da "master_key" deve ser inserido também no arquivo config/initializers/meilisearch.rb e na aba Api Key em http://localhost:7700/

./meilisearch --master-key="aSampleMasterKey"

após a configuração e execução dos passos acima, rodar um reindex! do model onde o meiliserach foi inserido.