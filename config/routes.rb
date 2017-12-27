Rails.application.routes.draw do
  post "/categories", to: "graphql#execute"
  devise_for :users, 
   only: :registrations,
    controllers: {
      registrations: 'users/registrations'
    }
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications
  end

  mount GraphiQL::Rails::Engine, at: '/gi', graphql_path: '/screen_masters' if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'categories/create_category', to: 'categories#create_category'
  post 'screen_masters/create_screen', to: 'categories#create_category'

end
