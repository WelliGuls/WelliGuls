Rails.application.routes.draw do

root 'home#index'

resources :meetups

get 'home/profile' => 'home#profile'

get 'auth/:provider/callback', to:'sessions#create'

delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

end
