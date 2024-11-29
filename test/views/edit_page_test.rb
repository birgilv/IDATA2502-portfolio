# require 'rails_helper'

# RSpec.describe 'posts/edit', type: :view do
#   # Before each test, set up a current user and a post to edit
#   before(:each) do
#     # Create or retrieve the first user for testing
#     current_user = User.first_or_create!(
#       email: 'dean@example.com',
#       password: 'password',
#       password_confirmation: 'password'
#     )

#     # Create a post and assign it to the @post instance variable
#     @post = assign(:post, Post.create!(
#                              title: 'MyString',   # Example title for the post
#                              body: 'MyText',      # Example body content for the post
#                              user: current_user,  # Associate the post with the current user
#                              views: 1             # Set the views count for the post
#                            ))
#   end

#   # Test case: Verify that the edit form is rendered correctly
#   it 'renders the edit post form' do
#     # Render the view template
#     render

#     # Check for the presence of a form element with the correct action and method
#     assert_select 'form[action=?][method=?]', post_path(@post), 'post' do
#       # Check for the presence of the input field for the post title
#       assert_select 'input[name=?]', 'post[title]'

#       # Check for the presence of the textarea field for the post body
#       assert_select 'textarea[name=?]', 'post[body]'
#     end
#   end
# end
