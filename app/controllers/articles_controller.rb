class ArticlesController < ApplicationController
  def show
    @article = Article.find_by_slug(params[:slug])

    @gravatar = Gravatar.new("luizpicolo@gmail.com").image_url

    @title = @article.title
    @description = @article.summary.first(255)
  end
end
