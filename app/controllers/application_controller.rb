class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_last_seen_at, if: proc { user_signed_in? }

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :city, :super_foodie, :admin, :default_image, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :city, :super_foodie, :admin, :default_image, :photo])
  end

  private

  def set_last_seen_at
    current_user.update_attribute(:last_seen_at, Time.current)
  end
end
