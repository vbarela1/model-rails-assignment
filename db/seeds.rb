20.times do
  Model.create(
    name: Faker::Name.name, 
    age: Faker::Number.between(18, 100).to_s,
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: Model.genders.sample,
    alive: Faker::Boolean.boolean
    )
end 

puts "Models seeded. There are now #{Model.count} models in the database"
