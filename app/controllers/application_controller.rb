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

  def after_sign_in_path_for(user)
    ((current_user.sign_in_count == 1) ? new_fact_sheet_path : dashboard_index_path )
  end

end
