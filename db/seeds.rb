require 'faker'

Faker::Config.locale = 'vi'
# Seed users
100.times do
  User.create(
    name: Faker::Name.unique.name,
    age: Faker::Date.between(from: '1950-09-23', to: '2010-09-25'),
    hobby: Faker::Hobby.activity,
    Heroes: Faker::DcComics.villain
  )
end

# Seed chefs
15.times do
  Chef.create(
    name: Faker::Name.unique.name,
    age: Faker::Date.between(from: '1950-09-23', to: '2010-09-25'),
    idol: Faker::Kpop.solo
  )
end

#Seed menus
30.times do
  Food.create(
    name: Faker::Food.dish
  )
end  

Chef.all.each do |chef|
  chef_ids = ChefCanCook.where(chef_id: chef.id).pluck(:food_id)
  available_foods = Food.where.not(id: chef_ids)

  rand(1..5).times do
    food = available_foods.sample
    ChefCanCook.create(chef_id: chef.id, food_id: food.id)
    available_foods = available_foods.where.not(id: food.id)
  end
end