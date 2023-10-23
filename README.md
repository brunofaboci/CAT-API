# README

rails version: 7.1
ruby version: 3.2.2

API: https://developers.thecatapi.com/view-account/ylX4blBYT9FaoVd6OhvR?report=bOoHBz-8t

API_KEY: para obter a key, é preciso acessar o site https://thecatapi.com/ e seguir os passos indicados.
  a key será enviada pro email cadastrado, depois basta substituir o valor da variavel "api_key" no CatApiService.

# Meilisearch - Instalação

Para instalar o meilisearch, basta seguir a documentação:

https://www.meilisearch.com/docs/learn/getting_started/installation#installation

# Popular tabela Cat

pra popular a tabela é só rodar o comando "CatApiService.new().fetch_cats"

no bloco initialize do CatApiService tem uma variável chamada "qtd_imgs" que pode ser alterada a vontade.
é ela que define quantas imagens vão ser trazidas na request.