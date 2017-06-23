class Users::RegistrationsController < Devise::RegistrationsController
  #before_action :configure_sign_up_params, only: [:create]
  #before_action :configure_account_update_params, only: [:update]
  def update
    current_user.update(role: params[:user][:role])
    redirect_to welcome_index_path
  end
end
