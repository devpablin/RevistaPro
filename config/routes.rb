Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # resources :events
  root 'welcome#building'
  resources :artists, only: [:new, :edit, :create, :destroy, :update]
  # resources :videos
  resources :reviews, only: [:show, :edit, :create, :destroy, :update]
  # resources :reports, path: :news
  # resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
