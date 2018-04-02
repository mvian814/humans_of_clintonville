# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# this is in the schema
# create_table "humans", force: :cascade do |t|
#   t.string "first_name"
#   t.string "last_name"
#   t.string "address_numbers"
#   t.string "street_name"
#   t.integer "birth_year"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end


def create_dog(h)
  h.dogs.destroy_all

  rand(3).times do |i|
    h.dogs.create!(
    name: Faker::StarTrek.character,
    breed: Faker::Dog.breed,
    weight: Faker::Number.between(5, 160),
    age: Faker::Number.between(1, 16),
  )
  end
end

Human.destroy_all

5.times do |i|
  h = Human.create!(

    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address_numbers: Faker::Address.building_number,
    street_name: Faker::Address.street_name,
    birth_year: Faker::Number.between(1938, 2000),
  )
  create_dog(h)
end
