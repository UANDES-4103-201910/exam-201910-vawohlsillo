class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :type
      t.string :model
      t.string :variant
      t.integer :price
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
