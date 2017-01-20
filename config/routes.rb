Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'static_pages#index'
  controller :static_pages do
	  get :landing_page
	  get :contact
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
