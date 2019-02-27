class Phone < ApplicationRecord
  before_create :generate_phone_number
#  belongs_to :user

  def generate_phone_number(phone_number)
      self.phone_number = Random.new.rand(1111111111..9999999999)
      generate_phone_number if Phone.exists?(phone_number: self.phone_number)
  end

end
