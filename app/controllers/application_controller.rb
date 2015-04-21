class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

require 'csv'
before_filter :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :first_name
  devise_parameter_sanitizer.for(:sign_up) << :role
  devise_parameter_sanitizer.for(:sign_up) << :role_id
  devise_parameter_sanitizer.for(:sign_up) << :account_id
  #devise_parameter_sanitizer.for(:account_update) << :name
end

rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

def after_sign_in_path_for(resource_or_scope)
     "/campaigns" 
end

def after_sign_out_path_for(resource_or_scope)
  "/users/sign_in" 
end


 private

  # Overwriting the sign_out redirect path method
     def after_sign_out_path_for(resource_or_scope)
         root_path
           end


end
