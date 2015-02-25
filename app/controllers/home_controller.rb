class HomeController < ApplicationController
  def index
    @articles = Article.all.page(params[:page])
  end
end
