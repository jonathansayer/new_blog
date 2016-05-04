Rails.application.routes.draw do

  devise_for :authors
  root 'articles#index'
end
