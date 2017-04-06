Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
   
  
  resources :pokemons do
  	member do
  		get 'add_pokemon'
  	end
  end
  resources :users do
  	resources :caughts do
  		member do
  			get 'lvl_up'
  		end
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pokemons#index'
end
