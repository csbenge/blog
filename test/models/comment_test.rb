require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def setup
    @user    = User.new(id: 99, name: "Test User 1", email: "test1@example.com", password: "password", password_confirmation: "password")
    @article = Article.new(id: 1, user_id: @user.id, title: "Article Title",  body: "article body article", status: "public")
    @comment = Comment.new(id: 1, user_id: @user.id, article_id: @article.id, body: "comment body comment", status: "public")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "body should be present" do
    @comment.body = "     "
    assert_not @comment.valid?
  end

  test "status should be present" do
    @comment.status = "     "
    assert_not @comment.valid?
  end
end
