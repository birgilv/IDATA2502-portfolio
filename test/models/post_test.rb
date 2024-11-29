# require 'rails_helper'

# RSpec.describe Post, type: :model do
#   # Create or retrieve a user for testing
#   current_user = User.first_or_create!(
#     email: 'dean@example.com',
#     password: 'password',
#     password_confirmation: 'password'
#   )

#   # Test case: A post must have a title
#   it 'has a title' do
#     post = Post.new(
#       title: '',              # Empty title to start
#       body: 'A Valid Body',   # Valid body content
#       user: current_user,     # Associate the post with the current user
#       views: 0                # Default views count
#     )
#     expect(post).to_not be_valid  # Post should be invalid without a title

#     post.title = 'Has a title'    # Assign a valid title
#     expect(post).to be_valid      # Post should now be valid
#   end

#   # Test case: A post must have a body
#   it 'has a body' do
#     post = Post.new(
#       title: 'A Valid Title', # Valid title
#       body: '',              # Empty body to start
#       user: current_user,    # Associate the post with the current user
#       views: 0               # Default views count
#     )
#     expect(post).to_not be_valid  # Post should be invalid without a body

#     post.body = 'Has a title'     # Assign a valid body
#     expect(post).to be_valid      # Post should now be valid
#   end

#   # Test case: A post title must be at least 2 characters long
#   it 'has a title at least 2 characters long' do
#     post = Post.new(
#       title: '1',             # Title with only 1 character
#       body: 'A Valid Body',   # Valid body content
#       user: current_user,     # Associate the post with the current user
#       views: 0                # Default views count
#     )
#     expect(post).to_not be_valid  # Post should be invalid with a short title

#     post.title = '12'          # Assign a title with 2 characters
#     expect(post).to be_valid    # Post should now be valid
#   end

#   # Test case: A post body must be between 5 and 100 characters
#   it 'has a body between 5 and 100 characters' do
#     post = Post.new(
#       title: '12',            # Valid title
#       body: '1234',           # Body too short
#       user: current_user,     # Associate the post with the current user
#       views: 0                # Default views count
#     )
#     expect(post).to_not be_valid  # Post should be invalid with a short body

#     post.body = '12345'       # Assign a valid body with 5 characters
#     expect(post).to be_valid  # Post should now be valid

#     # Create a string exactly 100 characters long
#     hundred_char_string = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m'
#     post.body = hundred_char_string
#     expect(post).to be_valid  # Post should be valid with a 100-character body

#     post.body = hundred_char_string + '1' # Assign a body with more than 100 characters
#     expect(post).to_not be_valid           # Post should be invalid
#   end

#   # Test case: A post's views attribute must be a numerical value
#   it 'has numerical views' do
#     post = Post.new(
#       title: '12',            # Valid title
#       body: '1234',           # Valid body content
#       user: current_user,     # Associate the post with the current user
#       views: 0                # Default views count
#     )
#     expect(post.views).to be_a(Integer)  # Views should be an integer
#   end
# end
