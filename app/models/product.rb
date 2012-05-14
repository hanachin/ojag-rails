class Product < ActiveRecord::Base
  attr_accessible :name, :type_number, :unit, :unit_price
  has_many :order_details
  has_many :orders, through: :order_details
  validates :name, :unit, :type_number, :unit_price, presence: true
end
