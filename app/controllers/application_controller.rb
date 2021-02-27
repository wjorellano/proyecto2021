class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

    def set_locale
      I18n.locale = params[:locale]
    end

    # def self.default_url_options
    #     { locale: I18n.locale }
    # end

    def self.default_url_options(options={})
      options.merge({ :locale => I18n.locale })
    end

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
