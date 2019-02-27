class User < ApplicationRecord
  rolify
  has_secure_password
 # has_many :phones
  
  def self.from_token_request request
    email = request.params["auth"] && request.params["auth"]["email"]
    self.find_by email: email
  end
end
