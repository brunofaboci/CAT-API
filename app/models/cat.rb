class Cat < ApplicationRecord
  include MeiliSearch::Rails

  extend Pagy::Meilisearch
  ActiveRecord_Relation.include Pagy::Meilisearch

  meilisearch do
    attributes :name
    attributes :temperament
    attributes :origin
    attributes :description

    sortable_attributes [:created_at, :updated_at]
  end
end
