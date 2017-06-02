require 'random_data'

# Create Wikis
50.times do
# #1
  Wiki.create!(
# #2
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
  wikis = Wiki.all

# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    wiki: Wikis.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{Comment.count} comments created"
