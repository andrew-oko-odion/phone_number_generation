class PhonesController < ApplicationController
   # skip_before_action :authenticate_user
  
  def create
    new_phone_number = Phone.new(phone_params)
    puts new_phone_number.inspect 
    if new_phone_number.save!
      puts new_phone_number.inspect 
      render json: {status: 200, msg: 'Phone number allocated successful'}
    else
      render json: {status: 400, msg: 'Error completing allocation'}
    end
  end


  private
  
  def phone_params
    params.require(:phone).permit(:users_id)
  end
end
