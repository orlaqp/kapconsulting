class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :middle_name, :phone_number, :time_zone, :last_name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :middle_name, :last_name, :time_zone, :phone_number, :term_id, :department_id, :email, :password, :password_confirmation, :current_password)}
  end

end
