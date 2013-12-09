class Offer < ActiveRecord::Base
  belongs_to :merchant
  belongs_to :rfp
  belongs_to :user

  def full_diamond_trait
    return "#{price}  #{carat}  #{shape} #{color}  #{cut}  #{clarity}"
  end

def user
  return User.find(user_id)
end

def merchant
  return Merchant.find(merchant_id)
end

def rfp
  return Rfp.find(rfp_id)
end

  validates :price, numericality: { greater_than: 0 }
  validates :shape, :presence => true
  validates :cut, :presence => true
  validates :color, :presence => true
  validates :clarity, :presence => true
  validates :carat, numericality: { greater_than: 0 }
  validates :user_id, :presence => true
  validates :merchant_id, :presence => true
  validates :rfp_id, :presence => true

end
