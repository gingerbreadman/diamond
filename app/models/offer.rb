class Offer < ActiveRecord::Base
  belongs_to :merchant
  belongs_to :rfp
  belongs_to :user
end
