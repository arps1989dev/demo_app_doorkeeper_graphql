Rails.application.routes.draw do
  devise_for :users, 
   only: :registrations,
    controllers: {
      registrations: 'users/registrations'
    }
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
