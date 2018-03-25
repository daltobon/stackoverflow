Rails.application.routes.draw do
  get 'answers/', to: 'questions#index'

  get 'answers/show'

  get 'answers/new'

  get 'answers/create'

  get 'answers/edit'

  get 'answers/update'

  get 'answers/destroy'

  devise_for :users
  root 'questions#index'
  resources :questions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
