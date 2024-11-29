# rubocop:disable all
# require 'rails_helper'

# RSpec.describe 'posts/index', type: :view do
#   # Create a current user for testing purposes
#   current_user = User.first_or_create!(
#     email: 'dean@example.com',
#     password: 'password',
#     password_confirmation: 'password'
#   )

#   # Before each test, assign a list of posts to the @posts instance variable
#   before(:each) do
#     assign(:posts, [
#              Post.create!(
#                title: 'Title',       # Example title for the first post
#                body: 'MyText',       # Example body for the first post
#                user: current_user,   # Assign the current user to the first post
#                views: 14             # Example views count for the first post
#              ),
#              Post.create!(
#                title: 'Title',       # Example title for the second post
#                body: 'MyText',       # Example body for the second post
#                user: current_user,   # Assign the current user to the second post
#                views: 12             # Example views count for the second post
#              )
#            ])
#   end

#   # Test case: Verify that the list of posts is rendered correctly
#   it 'renders a list of posts' do
#     # Render the view template
#     render

#     # Check for the presence of table rows containing the post titles
#     assert_select 'tr>td', text: 'Title'.to_s, count: 2

#     # Check for the presence of table rows containing the post bodies
#     assert_select 'tr>td', text: 'MyText'.to_s, count: 2

#     # Check for the presence of the user ID in the table rows
#     assert_select 'tr>td', text: current_user.id.to_s, count: 2

#     # Check for the views count of 14 for the first post
#     assert_select 'tr>td', text: 14.to_s, count: 1

#     # Check for the views count of 12 for the second post
#     assert_select 'tr>td', text: 12.to_s, count: 1
#   end
# end
