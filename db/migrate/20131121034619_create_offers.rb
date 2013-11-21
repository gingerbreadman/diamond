class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.float :price
      t.string :shape
      t.string :cut
      t.string :color
      t.string :clarity
      t.float :carat
      t.text :comment
      t.integer :user_id
      t.integer :merchant_id
      t.integer :rfp_id
    end
  end
end
