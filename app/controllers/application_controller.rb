class ApplicationController < ActionController::API
  before_action :doorkeeper_authorize!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # load_and_authorize_resource :screen_master, parent: false
  
  def doorkeeper_unauthorized_render_options(error: nil)
    { json: { error: "You are not authorized." } }
  end

  # rescue_from CanCan::AccessDenied do |exception|
  #   render json: {
  #     error: "You are not authorized."
  #   }
  # end

  protected
  
  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)

    if current_resource_owner.present?
      devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
    else
      devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
    end
  end

  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def current_ability
    Ability.new(current_resource_owner)
  end
end
