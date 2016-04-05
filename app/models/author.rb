class Author < ActiveRecord::Base

  has_many :articles
  validates :first_name, :surname,:email, presence: true
end
