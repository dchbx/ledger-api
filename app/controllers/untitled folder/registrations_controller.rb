class Users::RegistrationsController < Devise::RegistrationsController
  require 'auth_token'
    # Disable CSRF protection
    skip_before_action :verify_authenticity_token
  
    def create
      @user = User.new(user_params)
      token = AuthToken.issue_token({ user_id: resource.id }) if @user.save
    
      respond_to do |format|
        format.json { render json: {user: resource.email, admin: resource.admin, token: token} }
      end
    end
  
    private
  
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :admin)
    end
end