class Order < ApplicationRecord
	belongs_to :user
	has_one :address, inverse_of: :order
	accepts_nested_attributes_for :address
	has_many :order_products
	has_many :products, through: :order_products
end
