# rubocop:disable all
# require 'rails_helper'

# RSpec.describe 'posts/new', type: :view do
#   # Before each test, assign a new Post object to the @post instance variable
#   before(:each) do
#     assign(:post, Post.new(
#                     title: 'MyString', # Example title for the new post
#                     body: 'MyText',    # Example body content for the new post
#                     user: nil,         # No user is assigned in this test case
#                     views: 0           # Default views count for the new post
#                   ))
#   end

#   # Test case: Verify that the form for creating a new post is rendered correctly
#   it 'renders new post form' do
#     # Render the view template
#     render

#     # Check for the presence of the form element with the correct action and method
#     assert_select 'form[action=?][method=?]', posts_path, 'post' do
#       # Check for the presence of the input field for the post title
#       assert_select 'input[name=?]', 'post[title]'

#       # Check for the presence of the textarea field for the post body
#       assert_select 'textarea[name=?]', 'post[body]'
#     end
#   end
# end
