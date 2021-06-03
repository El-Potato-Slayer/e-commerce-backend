# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.create(email: "nappa@dappa.com", password: "123456", first_name: "Nappa", last_name: "Frey", username: "Ghost Nappa", avatar_url: "none", role_id: 1)
User.create(email: "hoppie@doppie.com", password: "123456", first_name: "Hoppie", last_name: "Hobber", username: "Hoppie Doppie", avatar_url: "no profile picture yet", role_id: 3)

Category.create(name: 'Music')
Category.create(name: 'Techhology')

Product.create(name: 'Guitar', description: 'Really nice guitar', price: 80, total_availability: 10)
Product.create(name: 'Synth', description: '80s Synthesizer', price: 120, total_availability: 8)

CategoryProduct.create(category_id: 1, product_id: 1)
CategoryProduct.create(category_id: 1, product_id: 2)

Cart.create(user_id: 1)
Cart.create(user_id: 2)

CartProduct.create(cart_id: 1, product_id: 1, quantity: 4)
CartProduct.create(cart_id: 1, product_id: 2, quantity: 7)
CartProduct.create(cart_id: 2, product_id: 2, quantity: 11)
