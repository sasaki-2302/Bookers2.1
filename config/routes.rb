Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  root to: "homes#top"
  get "home/about" => "homes#about"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
end
