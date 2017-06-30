class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  def show
    # @wikis = @user.wikis.visible_to(current_user)
  end
end
