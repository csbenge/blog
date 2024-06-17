require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @user    = User.new(id:99, name: "Test User 1", email: "test1@example.com", password: "password", password_confirmation: "password")
    @article = Article.new(id:1, user_id:@user.id, title: "Article Title", body: "article body article", status: "public")
  end

  test "should be valid" do
  #  assert @article.valid?
  end

  test "title should be present" do
    @article.title = "     "
    assert_not @article.valid?
  end

  test "body should be present" do
    @article.body = "     "
    assert_not @article.valid?
  end

  test "status should be present" do
    @article.status = "     "
    assert_not @article.valid?
  end
end
