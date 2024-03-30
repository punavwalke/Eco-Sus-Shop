class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :category
      t.text :description
      t.integer :price
      t.text :ingredients
      t.text :made_without
      t.text :packaging
      t.text :certifications

      t.timestamps
    end
  end
end
