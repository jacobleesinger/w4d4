Rails.application.routes.draw do
   resources :users, only: [:create, :new, :show]
   resource :session, only: [:create, :destroy, :new]

   resources :bands
   resources :albums
   resources :tracks
end
