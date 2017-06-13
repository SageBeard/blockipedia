require 'faker'

member = User.create(
  email:    'member@example.com',
  password: 'helloworld'
)

1.times do
  Wiki.create(
    title: Faker::Name.unique.name,
    body: Faker::Company.bs,
    user: member
    )
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{Wiki.user} users created"
