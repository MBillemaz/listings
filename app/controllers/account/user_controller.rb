class Account::UserController < Account::AccountController
    def index
        @user = current_user
    end

    def create
        current_user.update(listing_params)
    end

    private
        def listing_params
            params.require(:user)
                .permit(
                    :email,
                    :first_name,
                    :last_name,
                    :password,
                    :password_confirmation,
                    :current_password,
                )   
        end
end 