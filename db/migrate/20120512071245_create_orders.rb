class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.string :order_code
      t.string :delivery_place
      t.date :delivering_at
      t.string :customer_name
      t.string :company_name
      t.string :company_location
      t.string :company_zip_code
      t.string :company_phone
      t.string :company_fax
      t.text :note
      t.datetime :ordered_at

      t.timestamps
    end
  end
end
