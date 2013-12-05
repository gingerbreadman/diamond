class Rfp < ActiveRecord::Base
  has_many :matches
  has_many :offers
  belongs_to :user

  def full_diamond_trait
    return "#{max_price}  #{carat}  #{shape} #{color}  #{cut}  #{clarity}"
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

  validates :max_price, numericality: { greater_than: 0 }
  validates :carat, numericality: { greater_than: 0 }
  validates :user_id, :presence => true
end
