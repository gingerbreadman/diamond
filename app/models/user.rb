class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_many :rfps
  has_many :offers
  has_many :rfps, :through => :offers

  def full_name
    return "#{first_name} #{last_name}"
  end

  #validates :first_name, :presence => true
  #validates :last_name, :presence => true
  #validates :zip_code, :presence => true
  #validates :email, :presence => true
  #validates :phone_number, :presence => true

end
