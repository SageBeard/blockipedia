require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:wiki) { Wiki.create!(title: "My String", body: "New Wiki Body") }
  let(:user) { User.create!(name: RandomData.random_name, password: RandomData.random_sentence, password_confirmation: RandomData.random_sentence, email: "foo9@factory.com")}
  #
  # describe "attributes" do
  #   it "has title and body attributes" do
  #     expect(wiki).to have_attributes(user: user title: "New Wiki Title", body: "New Wiki Body")
  #   end
  # end

  #
  # describe "wiki scope works" do
  #   it "filters down wikis" do
  #     expect(Wiki.all.visible_to(user).count).to eq(Wiki.all.count)
  #   end
  # end
end
