class Rfp < ActiveRecord::Base
  has_many :matches
  has_many :offers
  belongs_to :user

  def full_diamond_trait
    return "#{max_price}  #{carat}  #{shape} #{color}  #{cut}  #{clarity}"
  end


end
