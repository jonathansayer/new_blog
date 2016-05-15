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

    it 'has an email address' do
      expect(subject).to respond_to :email
    end

    it 'has a password' do
      expect(subject).to respond_to :password
    end

    it "has many articles" do
      expect(subject).to respond_to :articles
    end
  end

  context 'An Author is not valid without all information' do

    before(:each) do
      @author = FactoryGirl.create(:author)
    end

    it 'is not valid without a first name' do
      @author.first_name = nil
      expect(@author).to_not be_valid
    end

    it 'is not valid without a surname' do
      @author.surname = nil
      expect(@author).to_not be_valid
    end

    it 'is not valid without an email' do
      @author.email = nil
      expect(@author).to_not be_valid
    end
  end
end
