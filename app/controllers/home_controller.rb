class HomeController < ApplicationController
  def index
    @description = "Site sobre desenvolvimento web mantido por Luiz Picolo. Para mais detalhes veja http://luizpicolo.com.br/about"

    @articles = Article.order("date_publish desc").page(params[:page])
  end

  def feed
    @articles = Article.all
  end
end
