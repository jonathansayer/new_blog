require "rails_helper"

RSpec.describe Author, type: :model do
  context 'An Author has a title, first name, surname and many articles' do
    it "has a title" do
      expect(subject).to respond_to :title
    end

    it "has a first name" do
      expect(subject).to respond_to :first_name
    end

    it "has a surname" do
      expect(subject).to respond_to :surname
    end

    it "has many articles" do
      expect(subject).to respond_to :articles
    end
  end
end
