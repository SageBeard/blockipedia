require 'faker'

5.times do
  Wiki.create(
    title: Faker::Name.unique.name,
    body: Faker::Company.bs,
    user: Faker::Internet.email
    )
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{Wiki.user} users created"
