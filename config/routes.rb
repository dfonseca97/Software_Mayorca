Rails.application.routes.draw do
 	
  resources :attendances
  resources :prices
  resources :schedules
  resources :activities #do
  	#collection do
  	#	get 'active'
  	#end
  #end

  devise_for :users
  resources :associates
 	get 'welcome/index'

	root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
