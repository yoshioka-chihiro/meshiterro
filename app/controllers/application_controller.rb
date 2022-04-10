class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

  # サインイン後にどこにいくか？
  def after_sign_in_path_for(resource)
    post1_images_path
  end

  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
