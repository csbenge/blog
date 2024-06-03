class ApplicationController < ActionController::Base
    include SessionsHelper
    add_flash_types :info, :error, :success

    private

        # Confirms a logged-in user.
        def logged_in_user
            unless logged_in?
                flash[:error] = "Please log in."
                redirect_to login_url
            end
        end
end
