class AccountController < ApplicationController
    protect_from_forgery with: :exception
    before_action :check_connect

    private
        def check_connect
            if !user_signed_in?
                redirect_to new_user_session_path
            end
        end
end