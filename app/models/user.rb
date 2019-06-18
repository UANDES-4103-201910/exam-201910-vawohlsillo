class User < ApplicationRecord
	validates :name, :lastname, :email, presence: true
	has_many :addresses
	has_many :orders
end
