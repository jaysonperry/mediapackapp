class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   before_filter :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :reg_code
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
 
  helper_method :resource, :resource_name, :devise_mapping

end
