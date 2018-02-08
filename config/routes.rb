Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "/contact" => "pages#join_us"

get "/explications" => "pages#comment_enregistrer_son_message"

get "/demander-message" => "pages#ais_je_un_message"


resources :messages, only: [:new, :create, :update, :edit, :destroy]


end
