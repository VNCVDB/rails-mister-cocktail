Rails.application.routes.draw do
  get "/cocktails",                         to: "cocktails#index"
  get "/cocktails/new",                     to: "cocktails#new"
  get "/cocktails/:id",                     to: "cocktails#show", as: "cocktail"
  post "/cocktails",                        to: "cocktails#create"
  get "/cocktails/:cocktail_id/doses/new",  to: "doses#new"
  post "/cocktails/:cocktail_id/doses/",    to: "doses#create"
  delete "doses/:id",                       to: "doses#destroy"
  # no route needed via cocktails on this last one,
  # we can delete without knowing the cocktail ID
  # cause we already know the dose ID to destroy.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
