class Author < ActiveRecord::Base
  # name is not blank
  # email is unique
  # phone_number is exactly 10 digits long
  validates :name, presence: true
  # error message auto populates the attribute name (Email)
  validates :email, uniqueness: { is: true, message: "is already taken" }
  # error message auto populates the attribute name (Phone number)
  validates :phone_number, length: { is: 10, message: "has to be 10 digits long" } 
end
