# test/system/posts_test.rb
require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a new post" do
    visit posts_url
    click_on "New Post"

    fill_in "Title", with: "Test Post"
    fill_in "Content", with: "This is a test post."
    click_on "Create Post"

    assert_text "Post was successfully created"
    assert_text "Test Post"
  end

  test "updating a post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Title", with: "Updated Title"
    click_on "Update Post"

    assert_text "Post was successfully updated"
    assert_text "Updated Title"
  end

  test "destroying a post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
