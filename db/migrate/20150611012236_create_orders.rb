class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :user_id
      t.integer :product_id
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total

      t.timestamps null: false
    end
  end
end
