require 'rails_helper'
require 'pry'

RSpec.describe Wiki, type: :model do
  password = RandomData.random_sentence
  let(:user) {
    User.create!(
      password: password,
      password_confirmation: password,
      email: "foo9@factory.com"
    )
  }
  let(:wiki) { Wiki.create!(title: "My String", body: "New Wiki Body", user: user) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(wiki).to have_attributes(user: user, title: "My String", body: "New Wiki Body")
    end
  end

  describe "wiki scope works" do
    it "filters down wikis" do
      expect(Wiki.all.visible_to(user).count).to eq(Wiki.all.count)
    end
  end
end
