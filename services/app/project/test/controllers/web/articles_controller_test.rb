require 'test_helper'

class WebArticlesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get articles_url
    assert_response :success
  end

  test 'should get article' do
    article = articles(:draft)
    get article_url(article)
    assert_response :success
  end

  test 'should create article draft' do
    params = { title: 'new article title', text: 'some text' }
    post articles_url, params: { article: params }
    article = Article.find_by(title: params[:title])
    assert_response :redirect
    assert { article.draft? }
  end

  test 'should update article' do
    article = articles(:draft)
    params = { title: 'new title' }
    patch article_url(article), params: { article: params }
    assert_response :redirect
    assert { params[:title] == article.reload.title }
  end

  test 'should destroy article' do
    article = articles(:draft)
    delete article_url(article)
    assert_response :redirect
    assert_raises(ActiveRecord::RecordNotFound) { article.reload }
  end

  test 'should send to moderation' do
    article = articles(:draft)
    patch send_to_moderation_article_path(article)
    assert_response :redirect
    assert { article.reload.on_moderation? }
  end
end
