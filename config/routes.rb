Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # resources :events
  root 'welcome#building'
  resources :artists
  # resources :videos
  resources :reviews
  resources :reports, path: :news
  # resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
