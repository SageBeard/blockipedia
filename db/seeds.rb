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



puts "Seed finished"
puts "#{Wiki.count} wikis created"
