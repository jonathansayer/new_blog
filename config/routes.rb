Rails.application.routes.draw do

  devise_for :admins
  root 'articles#index'

  namespace :admin do
    get 'resources' => 'resources#index'
  end 
end
