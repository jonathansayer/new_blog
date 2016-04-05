require 'rails_helper'

RSpec.describe Admin, type: :model do

  context ' Admin has a title, first name, last name and email address' do
    it 'has a title' do
      expect(subject).to respond_to :title
    end

    it 'has a first name' do
      expect(subject).to respond_to :first_name
    end

    it 'has a last surname' do
      expect(subject).to respond_to :surname
    end

    it 'has an email address' do
      expect(subject).to respond_to :email
    end

    context 'Admin has a password' do
      it 'has a password' do
        expect(subject).to respond_to :password
      end
    end
  end
end
