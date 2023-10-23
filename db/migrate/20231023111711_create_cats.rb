class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.string :api_id
      t.string :name
      t.string :description
      t.string :weight
      t.string :temperament
      t.string :origin
      t.string :country_code
      t.string :life_span
      t.string :url

      t.timestamps
    end
  end
end
