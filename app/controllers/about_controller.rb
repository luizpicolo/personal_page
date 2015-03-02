class AboutController < ApplicationController
  def index
    @about = About.first

    @title = "Luiz Picolo - Quem sou"
    @description = "Saiba um poco mais sobre Luiz Picolo"
  end
end
