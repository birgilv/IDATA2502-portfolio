# test/models/post_test.rb
require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new
    assert_not post.save, "Saved the post without a title"
  end

  test "title should be unique" do
    Post.create!(title: "Unique Title", content: "Some content")
    duplicate_post = Post.new(title: "Unique Title")
    assert_not duplicate_post.valid?, "Allowed duplicate title"
  end
end