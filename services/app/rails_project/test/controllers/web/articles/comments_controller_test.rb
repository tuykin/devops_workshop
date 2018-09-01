require 'test_helper'

class Web::Articles::CommentsControllerTest < ActionDispatch::IntegrationTest
  test 'should create comment' do
    article = articles(:draft)
    params = { commentor: 'me', body: 'some text' }
    post article_comments_url(article), params: { article_comment: params }
    assert_response :redirect
  end

  test 'should destroy comment' do
    comment = article_comments(:one)
    params = { commentor: 'me', body: 'some text' }
    post article_comments_url(comment.article), params: { article_comment: params }
    assert_response :redirect
  end
end
