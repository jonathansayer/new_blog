class Article < ActiveRecord::Base
  belongs_to :author

  validates :title, :body, presence: true
end
