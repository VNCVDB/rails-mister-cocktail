Rails.application.routes.draw do
  root to: "cocktails#index"
  # resources :cocktails, only: [:index, :show, :new, :create] do
  #   resources :doses, only: [:create]
  #   resources :reviews, only: [:create]
  # end
  # resources :doses, only: [:destroy]

  get "/cocktails",                           to: "cocktails#index"
  get "/cocktails/new",                       to: "cocktails#new",  as: "new_cocktail"
  get "/cocktails/:id",                       to: "cocktails#show", as: "cocktail"
  post "/cocktails",                          to: "cocktails#create"
  get "/cocktails/:cocktail_id/doses/new",    to: "doses#new",      as: "new_cocktail_dose"
  post "/cocktails/:cocktail_id/doses/",      to: "doses#create",   as: "cocktail_doses"
  delete "/doses/:id",                        to: "doses#destroy",  as: "dose"
  # no route needed via cocktails on this last one,
  # we can delete without knowing the cocktail ID
  # cause we already know the dose ID to destroy.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
