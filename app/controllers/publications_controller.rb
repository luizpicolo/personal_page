# Publication controller
class PublicationsController < ApplicationController
  def index
    @publications = Publication.all

    @title = 'Luiz Picolo - Publicações'
    @description = 'Aqui você pode encontrar algumas publicações de Luiz Picolo
                    publicadas em eventos, site, entre outros'
  end
end
