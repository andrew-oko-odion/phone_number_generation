class PhonesController < ApplicationController
   before_action :authenticate_user
  
  def create
    new_phone_number = Phone.new(phone_params)
    if new_phone_number.save
      render json: {status: 200, msg: 'Phone number allocated successful'}
    else
      render json: {status: 400, msg: 'Error completing allocation'}
    end
  end


  private
  
  def phone_params
    params.require(:phone).permit(:user_id, :phone_number)
  end
end
