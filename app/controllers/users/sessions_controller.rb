class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  def show
   @user = User.find(params[:id])
   @wikis = @user.wikis.visible_to(current_user)
 end
end
