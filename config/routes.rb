Rails.application.routes.draw do

  root 'articles#index'

  devise_for :admin, :skip => [:registrations, :sessions], controllers: { passwords: "devise/passwords" }
  devise_scope :admin do
    get "login", to: "devise/sessions#new", as: :new_admin_session
    post "login", to: "devise/sessions#create", as: :admin_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_admin_session
  end

  namespace :admin do
    get 'resources' => 'resources#index'
  end
end
