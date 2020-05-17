Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :video_posts, only: %i[new create]

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
