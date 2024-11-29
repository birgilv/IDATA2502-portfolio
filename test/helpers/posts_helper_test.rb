# rubocop:disable all
# include PostsHelper

# RSpec.describe PostsHelper, type: :helper do
#   # Test case: Verify that a user is assigned to a post using the helper method
#   it 'assigns a user to a post' do
#     # Create or retrieve the first user for testing
#     creator = User.first_or_create!(
#       email: 'dean@example.com',
#       password: 'password',
#       password_confirmation: 'password'
#     )

#     # Initialize a new post without a user assigned
#     @post = Post.new(
#       title: 'MyString', # Example title for the post
#       body: 'MyText',    # Example body content for the post
#       views: 1           # Example views count for the post
#     )

#     # Use the helper method to assign the creator as the user of the post
#     assign_post_creator(@post, creator)

#     # Expect the post's user to match the creator
#     expect(@post.user).to be(creator)
#   end
# end
