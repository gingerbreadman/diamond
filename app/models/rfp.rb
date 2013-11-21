class Rfp < ActiveRecord::Base
  has_many :matches
  has_many :offers
  belongs_to :user
end
