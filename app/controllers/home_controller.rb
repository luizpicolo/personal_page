class HomeController < ApplicationController
  def index
    @articles = Article.order("date_publish desc").page(params[:page])
  end
end
