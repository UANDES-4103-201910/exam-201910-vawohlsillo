class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :billing_address
      t.string :shipping_address
      t.integer :total_paid
      t.timestamps
    end
  end
end
