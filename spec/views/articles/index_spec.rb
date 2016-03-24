require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  context 'it displays an article' do

    before(:each) do
      author = FactoryGirl.create(:author, first_name:"Jonathan", surname: "Sayer")
      article = FactoryGirl.create(:article, title: "Test", body:"Testing Body", author: author)
      assign(:articles, [article])
    end

    it 'dispalys the Article title' do
      render
      expect(rendered).to include("Test")
    end

    it 'displays the Article Body' do
      render
      expect(rendered).to include("Testing Body")
    end

    it 'displays the Article Author' do
      render
      expect(rendered).to include("Jonathan Sayer")
    end

    it 'displays the articles from a partial' do
      render
      expect(view).to render_template(partial: "_article")
    end
  end

  context 'it displays all articles' do

    before(:each) do
      author = FactoryGirl.create(:author, first_name:"Jonathan Sayer", surname:"Sayer")
      article1 = FactoryGirl.create(:article, title:"Test1", body:"Test Body1", author: author)
      article2 = FactoryGirl.create(:article, title:"Test2", body:"Test Body2", author: author)
      article3 = FactoryGirl.create(:article, title:"Test3", body:"Test Body3", author: author)
      articles = [article1, article2, article3]
      assign(:articles, articles)
    end

    it 'displays all Article Titles' do
      render
      expect(rendered).to include("Test1", "Test2", "Test3")
    end

    it 'displays all the Article Bodys' do
      render
      expect(rendered).to include("Test Body1", "Test Body2", "Test Body3")
    end

    it 'displays all the Article Authors' do
      render
      expect(rendered).to include("Jonathan Sayer", "Jonathan Sayer", "Jonathan Sayer")
    end
  end
end
