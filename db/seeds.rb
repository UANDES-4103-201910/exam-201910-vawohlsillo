# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new( name: "Vicente", lastname: "Wohl", email: "vawohl@miuandes.cl" )
users = [user1]
for u in users do
	u.save!
end

product1 = Product.new( brand: "Samsung", category: "Handset", model: "S10", variant: "color black, 64 GB capacity", short_description: "The most powerful smartphone in the market", long_description: "Samsung surprise us again with their new smartphone S10 from their S Galaxy line. This mobile has the most colorful and sensitive graphics compare to other smartphones", price: 800000)
product2 = Product.new( brand: "Claro", category: "Pre-paid card",  price: 5000, short_description: "Claro pre-paid card", long_description: "Add 60 minutes to talk with other people")
product3 = Product.new( brand: "WOM", category: "Suscription plan", price: 10000, short_description: "WOM 4G for only $10.000", long_description: "Adquire our new 20 GB on mobile internet 4G, offer only for june" )

products = [product1, product2, product3]
for p in products do
	p.save!
end

order1 = Order.new( user: users[0], billing_address: "San Carlos 2200", shipping_address: "San Carlos 2200", total_paid: 800000)

orders = [order1]

for o in orders do
	o.save!
end 

address1 = Address.new(user: users[0], order: orders[0], phone: "987654321", line1: "San Carlos 2200", line2: "San Carlos 2200", city: "Santiago", country: "Chile", zip_code: 7550000)

adresses = [address1]

for a in adresses do
	a.save!
end

order_prod1 = OrderProduct.new( product: products[0], order: orders[0] )

order_products = [order_prod1]

for od in order_products do
	od.save!
end


