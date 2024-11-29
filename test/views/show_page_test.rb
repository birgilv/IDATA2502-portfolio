# rubocop:disable all
# require 'rails_helper'

# RSpec.describe 'posts/show', type: :view do
#   # Before each test, set up a user and a post
#   before(:each) do
#     # Create or retrieve the first user
#     current_user = User.first_or_create!(
#       email: 'dean@example.com',
#       password: 'password',
#       password_confirmation: 'password'
#     )

#     # Create a post and assign it to the `@post` instance variable
#     @post = assign(:post, Post.create!(
#                              title: 'Title',
#                              body: 'MyText',
#                              user: current_user,
#                              views: 0
#                            ))
#   end

#   # Test case: Verify that the post attributes are rendered correctly in the view
#   it 'renders attributes in <p>' do
#     # Render the view template
#     render

#     # Check if the rendered view contains specific attributes
#     expect(rendered).to match(/Title/)  # Check for the post title
#     expect(rendered).to match(/MyText/) # Check for the post body
#     expect(rendered).to match(//)       # Placeholder for additional checks
#     expect(rendered).to match(/0/)      # Check for the post views count
#   end
# end
