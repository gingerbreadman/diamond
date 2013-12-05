class User < ActiveRecord::Base
  has_many :rfps
  has_many :offers

  def full_name
    return "#{first_name} #{last_name}"
  end

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :zip_code, :presence => true
  validates :email, :presence => true
  validates :phone_number, :presence => true

end
