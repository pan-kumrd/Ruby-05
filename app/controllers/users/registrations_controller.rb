class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # POST /resource/avatar
  def avatar
    current_user.avatar = params[:user][:avatar]
    if current_user.save
      respond_to do |format|
        format.html { redirect_to edit_user_registration_url }
      end
    else
      respond_to do |format|
        format.html { redirect_to edit_user_registration_url, alert: 'Failed to update user avatar.' }
      end
    end
  end
  
  def destroy_avatar
    current_user.avatar = nil
    current_user.save
    respond_to do |format|
      format.html { redirect_to edit_user_registration_url }
    end
  end

  protected

  def user_params
    params.require(:user).permit(:avatar)
  end

end
