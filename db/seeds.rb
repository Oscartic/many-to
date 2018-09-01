# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.connection.execute("ALTER SEQUENCE CATEGORIES_id_seq RESTART WITH 1")
Category.destroy_all
categories = %w(Diseño Rails Productos Startup HTML/CSS UX UI)
categories.each do |category|
  Category.create!(name: category)
end

