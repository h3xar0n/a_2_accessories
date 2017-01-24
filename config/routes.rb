Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'static_pages#index'
  controller :static_pages do
	  get :landing_page
	  get :contact
	end
	post 'static_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
