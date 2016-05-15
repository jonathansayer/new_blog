require "rails_helper"

RSpec.describe Article, :type => :model do

  context 'An article has a title, body and author' do
    it "has a title" do
      expect(subject).to respond_to :title
    end

    it 'has a body' do
      expect(subject).to respond_to :body
    end

    it "belongs to an author" do
      expect(subject).to respond_to :author
    end
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :body }
  end
end
