class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :unit_price
      t.integer :quantity
      t.string :product_name
      t.string :product_unit
      t.string :product_type_number

      t.timestamps
    end
  end
end
