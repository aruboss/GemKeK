Rails.application.routes.draw do
  get 'search/index'
  get 'login/home'
  get 'game/index'
  get 'game/detail'
  get 'gameshousai/home'
  get 'search/index'
  get 'search/advance_search'
  root 'game#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
