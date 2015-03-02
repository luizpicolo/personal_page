class HomeController < ApplicationController
  def index
    @title = "Luiz Picolo - Desenvolvimento Web"
    @description = "Site sobre desenvolvimento web mantido por Luiz Picolo. Para mais detalhes veja http://luizpicolo.com.br/about"

    @articles = Article.order("date_publish desc").page(params[:page])
  end
end
