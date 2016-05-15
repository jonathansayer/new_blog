Rails.application.routes.draw do

  devise_for :authors
  root 'articles#index'

  namespace :admin do
    get 'resources' => 'resources#index'
  end

  devise_scope :author do
    get "/login" => "devise/sessions#new"
  end
end
