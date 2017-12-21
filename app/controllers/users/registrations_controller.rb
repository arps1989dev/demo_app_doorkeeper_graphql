class Users::RegistrationsController < Devise::RegistrationsController
  
  skip_before_action :doorkeeper_authorize!
  respond_to :json

   def create
    build_resource(sign_up_params)

    if resource.save
      if resource.persisted?
        if resource.active_for_authentication?
          sign_up(resource_name, resource)
        else
          expire_data_after_sign_in!
        end
        render json: resource, status: :ok
      else
        render json: { error: resource.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: resource.errors.full_messages }, status: :unprocessable_entity
    end

  end
end
