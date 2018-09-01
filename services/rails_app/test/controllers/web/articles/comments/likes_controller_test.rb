require 'test_helper'

class Web::Articles::Comments::LikesControllerTest < ActionDispatch::IntegrationTest
  test 'should create like' do
    comment = article_comments(:one)
    post article_comment_likes_url(comment.article, comment)
    assert_response :redirect
    assert { 1 == comment.likes.count }
  end

  test 'should create only 5 likes in an hour' do
    skip 'likes stil updated'
    comment = article_comments(:one)
    5.times { post article_comment_likes_url(comment.article, comment) }
    assert { 5 == comment.likes.count }
    post article_comment_likes_url(comment.article, comment)
    assert { 5 == comment.likes.count }
    assert_response :forbidden
  end
end
