# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = [
  { name: '鉛筆', price: 100 },
  { name: 'ボールペン', price: 200 },
  { name: '消しゴム', price: 50 },
  { name: 'ノート', price: 100 }
]
Product.create(products)