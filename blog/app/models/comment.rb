class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :author, :body, :email :presence => true
  validates :body, length: { minimum: 5 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
