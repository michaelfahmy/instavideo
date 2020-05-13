Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
