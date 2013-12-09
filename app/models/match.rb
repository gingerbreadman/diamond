class Match < ActiveRecord::Base
  belongs_to :rfp
  belongs_to :merchant

  validates :rfp, :presence => true
  validates :merchant, :presence => true

  def full_diamond_trait
    return "#{max_price}  #{carat}  #{shape} #{color}  #{cut}  #{clarity}"
  end

end
