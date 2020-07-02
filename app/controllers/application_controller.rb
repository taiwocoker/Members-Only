class ApplicationController < ActionController::Base
  def signed_in_user
      unless signed_in?
        redirect_to signin_url
      end
    end
end
