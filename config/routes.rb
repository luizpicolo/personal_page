Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'home#index'

  get '/:year/:month/:day/:slug' => 'articles#show', as: :show_article
  get '/about' => 'about#index', as: :about
  get '/portfolio' => 'portfolio#index', as: :portfolio
  get '/publications' => 'publications#index', as: :publications
  get '/contacts' => 'contacts#index', as: :contacts

end
