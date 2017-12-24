class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :url
      t.decimal :score, index: true
      t.decimal :price
      t.integer :category_id, index: true

      t.timestamps
    end
  end
end