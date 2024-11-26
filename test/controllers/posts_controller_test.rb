# test/controllers/posts_controller_test.rb
require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one) # Assuming you have fixtures
  end

  test "should get index" do
    get posts_url
    assert_response :success
    assert_select "h1", "Posts"
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { title: "New Post", content: "Some content" } }
    end
    assert_redirected_to post_path(Post.last)
  end

  test "should update post" do
    patch post_url(@post), params: { post: { title: "Updated Title" } }
    assert_redirected_to post_path(@post)
    @post.reload
    assert_equal "Updated Title", @post.title
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end
    assert_redirected_to posts_path
  end
end
