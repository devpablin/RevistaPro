Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :events
  root 'welcome#index'
  resources :artists
  resources :videos
  resources :reviews
  resources :reports, path: :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
