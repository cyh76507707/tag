Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'posts#index'
  resources :posts do
    resources :comments
    patch 'upvote', to: "posts#upvote"
  end

end
