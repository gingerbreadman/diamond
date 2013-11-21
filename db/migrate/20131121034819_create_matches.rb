class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :merchant_id
      t.integer :rfp_id
    end
  end
end
