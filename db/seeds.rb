# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_initialize_by(id: 1)
user.update!(email: 'mysample@123.com', password: 'mysample@123')

admin = Admin::Administrator.find_or_initialize_by(id: 1)
admin.update!(email: 'mysample@123.com', password: 'mysample@123')
