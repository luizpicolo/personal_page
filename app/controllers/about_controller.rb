class AboutController < ApplicationController
  def index
    @about = About.first

    @title = "Luiz Picolo - Quem sou"
    @description = @about.body.first(255)
  end
end
