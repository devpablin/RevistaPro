Rails.application.routes.draw do
  resources :covers
  mount Ckeditor::Engine => '/ckeditor'
  # resources :events
  root 'welcome#index'
  resources :artists
  # resources :videos
  resources :reviews
  resources :reports, path: :news
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
