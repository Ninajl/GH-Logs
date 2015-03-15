class Resident < ActiveRecord::Base

  validates :first_name, :last_name, :unit, :tower, :telephone, presence: true
  validates :email, :telephone, uniqueness: true

  def fullname
    "#{first_name} #{last_name}"
  end

end
