Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  #root controller: :articles, action: :index
  resources :articles #, only: [:show, :new, :create, :edit, :update]
end
