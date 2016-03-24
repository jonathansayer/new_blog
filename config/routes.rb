Rails.application.routes.draw do

  root 'articles#index'

  namespace :admin do
    get 'resources' => 'resources#index'
  end 
end
