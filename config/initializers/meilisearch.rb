require 'meilisearch'

MeiliSearch::Rails.configuration = {
  meilisearch_host: 'http://localhost:7700/',
  meilisearch_api_key: 'aSampleMasterKey',
  timeout: 2,
  max_retries: 1
}