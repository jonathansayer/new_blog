require 'rails_helper'

RSpec.describe Admin, type: :model do

  context ' Admin has a title, first name, last name and email address' do
    it 'has a title' do
      expect(subject).to respond_to :title
    end
  end
end
