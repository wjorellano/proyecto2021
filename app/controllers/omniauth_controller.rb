class OmniauthController < ApplicationController
    # def facebook
    #     # You need to implement the method below in your model (e.g. app/models/user.rb)
    #     @user = User.create_from_provider_data(request.env["omniauth.auth"])
    #     if @user.persisted?
    #         sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
    #         # set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    #     else
    #         session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
    #         redirect_to new_user_registration_url
    #     end
    # end

    def github
        @user = User.create_from_provider_data(request.env["omniauth.auth"]) 
        if @user.persisted?
            sign_in_and_redirect @user, event: :authentication
            # sign_in_and_redirect @user
            # set.set_flash_message(:notice, :success, kind: 'Github') if is_navigational_format?
        else
            flash[:error] = 'prolema al iniciar sesion con Github.'
            redirect_to new_user_registration_url
        end
    end

    def failure
        flash[:error] = 'problema al iniciar sesion.'
        redirect_to new_user_registration_url
    end
end
