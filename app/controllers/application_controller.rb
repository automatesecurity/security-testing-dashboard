class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  # Since Devise 4.1 devise_parameter_sanitizer.for has ben deprecated - use .permit
  # Need to also update << :name to keys: [:name]
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
