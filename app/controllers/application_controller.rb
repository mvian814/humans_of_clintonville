class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


protected

# def configure_permitted_parameters
#   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address_numbers, :street_name, :birth_year])
#
# end

end
