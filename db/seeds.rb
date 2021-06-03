# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "nappa@dappa.com", password: "123456", first_name: "Nappa", last_name: "Frey", username: "Ghost Nappa", avatar_url: "none", role_id: 1)
User.create(email: "hoppie@doppie.com", password: "123456", first_name: "Hoppie", last_name: "Hobber", username: "Hoppie Doppie", avatar_url: "no profile picture yet", role_id: 3)