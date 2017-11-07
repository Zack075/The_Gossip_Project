class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def sanitize_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
  end
end
