require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = Article.new(title: "Article TItle", body: "article body", status: "public")
  end

  test "should be valid" do
    assert @article.valid?
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
