class Web::Articles::ApplicationController < Web::ApplicationController
  def resource_article
    requested_article
  end

  def requested_article
    Article.find(params[:article_id])
  end
end
