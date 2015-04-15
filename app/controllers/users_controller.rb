class UsersController < Devise::SessionsController

def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :role_id, :account_id)
end


end
