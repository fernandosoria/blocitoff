require 'faker'

#Create users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10),
  )
  user.skip_confirmation!
  user.save
end
users = User.all

50.times do
  todo = Todo.create(
    user: users.sample,
    description: Faker::Lorem.sentence,
  )
end
todos = Todo.all

memb1 = User.new(
  name: 'Fernando Soria',
  email: 'member@example.com',
  password: 'helloworld',
)
memb1.skip_confirmation!
memb1.save

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Todo.count} posts created"