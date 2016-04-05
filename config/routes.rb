Rails.application.routes.draw do

  root 'articles#index'

  devise_for :admin, :skip => [:registrations, :sessions], controllers: { passwords: "admin/passwords" }
  devise_scope :admin do
    get "login", to: "devise/sessions#new"
  end
  namespace :admin do
    get 'resources' => 'resources#index'
  end
end
