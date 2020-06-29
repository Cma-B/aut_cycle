Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  end
  get 'welcome/index'
  root 'welcome#index' 
  resources :articles 
end
