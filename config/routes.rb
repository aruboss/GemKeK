Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'user_profile/home'
  get 'login/home'
  get 'game/index'
  get 'game/detail'
  get 'gameshousai/home'
  get 'search/index'
  get 'search/advance_search'
  root 'game#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reviews,          only: [:create, :destroy, :rate, :show, :update] do
    post 'reviews_rate' , to: 'reviews#rate'
    resources :comments
  end
  #get 'reviews_show', to: 'reviews#show'
   resources :likes, only: [:create, :destroy]
end
