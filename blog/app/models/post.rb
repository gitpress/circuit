class Post < ActiveRecord::Base
  validates :title, :author, :body :presence => true
  validates :body, length: { minimum: 15 }
  validates :title, uniqueness: { case_sensitive: false }
  
  has_many :comments

end
