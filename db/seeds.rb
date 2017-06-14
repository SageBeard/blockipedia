require 'faker'

member = User.create(
  email:    'member@example.com',
  password: 'helloworld'
)

6.times do
  Wiki.create(
    title: Faker::Name.unique.name,
    body: Faker::Company.bs,
    user: member
    )
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"
