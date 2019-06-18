class Address < ApplicationRecord
	belongs_to :user
	belongs_to :order
	validates :phone, :zip_code, numericality: true
	validates :line1, :line2, :city, :country, presence: true
end
