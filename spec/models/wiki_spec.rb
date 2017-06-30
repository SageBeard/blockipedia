require 'rails_helper'
require 'pry'

RSpec.describe Wiki, type: :model do
  password = RandomData.random_sentence
  let!(:user) {
    User.create!(
      password: password,
      password_confirmation: password,
      email: "first@factory.com"
    )
  }

  let!(:wiki) { Wiki.create!(title: "My String", body: "New Wiki Body", user: user) }
  let!(:private_wiki) { Wiki.create!(title: "My String", body: "New Wiki Body", user: user, private: true) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(wiki).to have_attributes(user: user, title: "My String", body: "New Wiki Body")
    end
  end

  describe "wiki #visible_to scope works" do
    it "filters down wikis" do
      # Since the user is not premium they will only be able
      # to see the non-private wiki
      expect(Wiki.all.visible_to(user).count).to eq(1)
    end
  end
end
