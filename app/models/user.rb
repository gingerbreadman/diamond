class User < ActiveRecord::Base
  has_many :rfps
  has_many :offers

  def full_name
    return "#{first_name} #{last_name}"
  end

end
