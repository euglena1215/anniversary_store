Rails.application.routes.draw do
  resources :alliances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'root#index'

  resources :couples
  resources :events
  resources :evaluations
  resources :comments
  resources :impressions
  resources :anniversaries
  get '/result', to: 'result#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
