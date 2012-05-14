class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :customer_name, :delivering_at, :delivery_place, :note, :order_code, :ordered_at
  has_many :order_details
  has_many :products, through: :order_details
  accepts_nested_attributes_for :order_details
end
