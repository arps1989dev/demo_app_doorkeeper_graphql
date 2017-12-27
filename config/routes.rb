Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  devise_for :users, 
   only: :registrations,
    controllers: {
      registrations: 'users/registrations'
    }
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications
  end

  mount GraphiQL::Rails::Engine, at: '/gi', graphql_path: '/graphql' if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # post 'categories/create_category', to: 'categories#create_category'
end
