class ArticlesController < ApplicationController
  def show
    @article = Article.find_by_slug(params[:slug])
  end
end
