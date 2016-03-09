require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  it 'dispalys the Article title' do
    author = FactoryGirl.create(:author, first_name:"Jonathan", surname: "Sayer")
    article = FactoryGirl.create(:article, title: "Test", body:"Testing", author: author)
    assign(:article, article)
    render
    expect(rendered).to include("Test")
  end
end
