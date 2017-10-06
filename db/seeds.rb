require 'database_cleaner'

puts 'Launching seed'
DatabaseCleaner.clean_with :truncation

puts 'Creating department...'
Department.create!(
  name: 'Paris',
  department_number: 75
  )
puts "#{Department.last.name} ok"

puts 'Creating cities...'
City.create!(
  name: 'Paris',
  zip_code: '75014',
  department_id: Department.where(department_number: 75).first.id
  )
puts "#{City.last.name} ok"

puts 'Creating users...'
pwd = "12345678"
5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: pwd,
    password_confirmation: pwd,
    city_id: City.all.sample.id
    )
  puts "#{User.last.first_name} ok"
end

puts "Creating categories..."

names = ["voiture", "bateau", "moto"]
names.each do |name|
  Category.create!(
    name: name
    )
  puts "#{Category.last.name} ok"
end

puts 'Creating products...'

10.times do
  Product.create!(
    name: Faker::Vehicle.manufacture,
    price: rand(1 .. 10) * 100,
    category_id: Category.all.sample.id,
    user_id: User.all.sample.id
  )
  puts "#{Product.last.name} ok"
end

puts 'Finished!'
