class ApplicationController < ActionController::Base
  before_action :authenticate_employee!

  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:name, :position])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:name, :position])
  end
end
