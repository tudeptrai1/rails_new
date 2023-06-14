require 'faker'

Faker::Config.locale = 'vi'
# Seed users
100.times do
  User.create(
    name: Faker::Name.unique.name,
    age: Faker::Date.between(from: '1950-09-23', to: '2010-09-25'),
    hobby: Faker::Hobby.activity
  )
end