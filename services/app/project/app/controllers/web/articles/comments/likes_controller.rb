class Web::Articles::Comments::LikesController < Web::Articles::Comments::ApplicationController
  def create
    if resource_comment.likes.recent.count <= 5
      resource_comment.likes.create
      redirect_to article_path(resource_article)
    else
      render :forbidden
    end
  end
end
