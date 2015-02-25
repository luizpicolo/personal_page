class PortfolioController < ApplicationController
  def index
    @portfolio = Portfolio.all
  end
end
