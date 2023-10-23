class Cat < ApplicationRecord
  include MeiliSearch::Rails

  meilisearch do
    attributes :name
    attributes :temperament
    attributes :origin
    attributes :description

    sortable_attributes [:created_at, :updated_at]
  end
end
