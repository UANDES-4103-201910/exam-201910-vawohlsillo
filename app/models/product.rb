class Product < ApplicationRecord
	#self.inheritance_column = :foo
	validates :brand, :category, presence: true
	validates :price, numericality: true
	validates :short_description, length: {maximum: 150, too_long: "%{count} characters is the maximum allow"}
	validates :long_description, length: {maximum: 1200, too_long: "%{count} characters is the maximum allow"}
	has_many :order_products
	has_many :orders, through: :order_products
end
