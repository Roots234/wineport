# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |n|
  Product.create!(
    admin_id:1,
    name: Faker::Book.title,
    description: Faker::Lorem.paragraph(sentence_count:2),
    price: Faker::Number.within(range:1000..100000),
    image: File.open("./app/assets/images/image.jpg"),
  )
end
