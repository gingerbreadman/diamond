class Match < ActiveRecord::Base
  belongs_to :rfp
  belongs_to :merchant

  validates :rfp_id, :presence => true
  validates :merchant_id, :presence => true

end
