# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create! id: 1, name: "Banana", price: 2.49, active: true
Product.create! id: 2, name: "Laranja", price: 5.29, active: true
Product.create! id: 3, name: "Abacaxi", price: 2.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Coupons.delete_all
Coupons.create! id: 1, description: "nothing discount", minimum_value: 400, percent: 0
Coupons.create! id: 2, description: "discount 500", minimum_value: 500, percent: 5
Coupons.create! id: 3, description: "discount 600", minimum_value: 600, percent: 10
Coupons.create! id: 4, description: "discount 700", minimum_value: 700, percent: 15