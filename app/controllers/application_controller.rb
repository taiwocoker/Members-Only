class ApplicationController < ActionController::Base
  before_action :signed_in_user, only: [:new, :create]

  def signed_in_user
      unless signed_in?
        redirect_to 
      end
    end
end
