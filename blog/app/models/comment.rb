class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :author, :presence => true
  validates :body, length: { minimum: 5 }
end
