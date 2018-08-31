require 'test_helper'

class WebModerationArticlesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get moderation_articles_path
    assert_response :success
  end

  test 'should get atricle on moderation' do
    article = articles(:on_moderation)
    get moderation_article_url(article)
    assert_response :success
  end

  test 'should get atricle on moderation edit' do
    article = articles(:on_moderation)
    get edit_moderation_article_url(article)
    assert_response :success
  end

  test 'should moderate article' do
    category = article_categories(:sci_fi)
    article = articles(:on_moderation)
    params = { category_id: category.id }
    patch moderate_moderation_article_path(article), params: { article: params }
    assert_response :redirect
    article.reload
    assert { category == article.category }
    assert { article.published? }
  end
end