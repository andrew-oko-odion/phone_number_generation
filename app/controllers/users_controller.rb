class UsersController < ApplicationController
  # skip_before_action :authenticate_user
  
  def create
    new_user = User.new(user_params)
    if new_user.save 
      render json: {status: 200, msg: 'User was created.'}
    end
  end

  def me
    render json: current_user
  end
  
  def update
  end


  private
  
  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
    
end
