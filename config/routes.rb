Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registrations => "user_registrations" }
  resources :products do
    resources :comments
  end
  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'static_pages#landing_page'
  controller :static_pages do
	  get :landing_page
	  get :contact
    get :about
	end
	post 'static_pages/thank_you'
  post 'payments/create'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
