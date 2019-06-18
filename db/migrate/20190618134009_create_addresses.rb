class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :phone
      t.string :line1
      t.string :line2
      t.string :city
      t.string :country
      t.integer :zip_code

      t.timestamps
    end
  end
end
