# class Post < ApplicationRecord
#   # Specifies that each post belongs to a user
#   belongs_to :user
#   
#   # Validation: Ensure the title is present and has a minimum length of 2 characters
#   validates :title, presence: true, length: { minimum: 2 }
#   
#   # Validation: Ensure the body is present and its length is between 5 and 100 characters
#   validates :body, presence: true, length: { in: 5..100 }
#   
#   # Validation: Ensure the views attribute is a numeric value and an integer
#   validates :views, numericality: { only_integer: true }
# end
