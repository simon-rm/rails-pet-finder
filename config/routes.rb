Rails.application.routes.draw do
  get "pets/new", to: "pets#new", as: :new_pet
  post "pets", to: "pets#create"
  get "pets", to: "pets#index"
  get "pets/:id", to: "pets#show", as: :pet
end
