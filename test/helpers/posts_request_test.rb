# RSpec.describe '/posts', type: :request do
#   # Define a current user for testing
#   # Ensure the attributes are updated to match the Post validations
#   current_user = User.first_or_create!(
#     email: 'dean@example.com',
#     password: 'password',
#     password_confirmation: 'password'
#   )

#   # Define valid attributes for creating a post
#   let(:valid_attributes) do
#     {
#       'id' => '1',
#       'title' => 'Test',       # A valid title
#       'body' => '12345',       # A valid body
#       'user' => current_user   # Associate the post with the current user
#     }
#   end

#   # Define invalid attributes for creating a post
#   let(:invalid_attributes) do
#     {
#       'id' => 'a',             # Invalid ID
#       'title' => '1',          # Invalid title (too short)
#       'body' => '1234'         # Invalid body (too short)
#     }
#   end

#   # Test the GET /index action
#   describe 'GET /index' do
#     it 'renders a successful response' do
#       post = Post.new(valid_attributes)
#       post.user = current_user
#       post.save
#       get posts_url
#       expect(response).to be_successful
#     end
#   end

#   # Test the GET /show action
#   describe 'GET /show' do
#     it 'renders a successful response' do
#       post = Post.new(valid_attributes)
#       post.user = current_user
#       post.save
#       get post_url(post)
#       expect(response).to be_successful
#     end
#   end

#   # Test the GET /new action
#   describe 'GET /new' do
#     it 'renders a successful response' do
#       get new_post_url
#       expect(response).to be_successful
#     end
#   end

#   # Test the GET /edit action
#   describe 'GET /edit' do
#     it 'renders a successful response' do
#       post = Post.new(valid_attributes)
#       post.user = current_user
#       post.save
#       get edit_post_url(post)
#       expect(response).to be_successful
#     end
#   end

#   # Test the POST /create action
#   describe 'POST /create' do
#     context 'with valid parameters' do
#       it 'creates a new Post' do
#         expect do
#           post = Post.new(valid_attributes)
#           post.user = current_user
#           post.save
#           post posts_url, params: { post: valid_attributes }
#         end.to change(Post, :count).by(1)
#       end

#       it 'redirects to the created post' do
#         post posts_url, params: { post: valid_attributes }
#         expect(response).to be_successful
#       end
#     end

#     context 'with invalid parameters' do
#       it 'does not create a new Post' do
#         expect do
#           post posts_url, params: { post: invalid_attributes }
#         end.to change(Post, :count).by(0)
#       end

#       it "renders a successful response (i.e. to display the 'new' template)" do
#         post posts_url, params: { post: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   # Test the PATCH /update action
#   describe 'PATCH /update' do
#     context 'with valid parameters' do
#       let(:new_attributes) do
#         {
#           'id' => '1',
#           'title' => 'Test',     # Updated title
#           'body' => '12345',     # Updated body
#           'user' => current_user # Associate with current user
#         }
#       end

#       it 'updates the requested post' do
#         post = Post.new(valid_attributes)
#         post.user = current_user
#         post.save
#         patch post_url(post), params: { post: new_attributes }
#         post.reload
#         skip('Add assertions for updated state')
#       end

#       it 'redirects to the post' do
#         post = Post.new(valid_attributes)
#         post.user = current_user
#         post.save
#         patch post_url(post), params: { post: new_attributes }
#         post.reload
#         expect(response).to redirect_to(post_url(post))
#       end
#     end

#     context 'with invalid parameters' do
#       it "renders a successful response (i.e. to display the 'edit' template)" do
#         post = Post.create! valid_attributes
#         patch post_url(post), params: { post: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   # Test the DELETE /destroy action
#   describe 'DELETE /destroy' do
#     it 'destroys the requested post' do
#       post = Post.new(valid_attributes)
#       post.user = current_user
#       post.save
#       expect do
#         delete post_url(post)
#       end.to change(Post, :count).by(-1)
#     end

#     it 'redirects to the posts list' do
#       post = Post.new(valid_attributes)
#       post.user = current_user
#       post.save
#       delete post_url(post)
#       expect(response).to redirect_to(posts_url)
#     end
#   end
# end
