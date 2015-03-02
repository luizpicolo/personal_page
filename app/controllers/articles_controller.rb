class ArticlesController < ApplicationController
  def show
    @article = Article.find_by_slug(params[:slug])

    @title = @article.title
    @description = @article.summary.first(50)
  end
end
