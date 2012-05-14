class OrderDetail < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :product_name, :product_type_number, :product_unit, :quantity, :unit_price
  belongs_to :product
  belongs_to :order
end
