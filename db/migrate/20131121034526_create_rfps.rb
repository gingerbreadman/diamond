class CreateRfps < ActiveRecord::Migration
  def change
    create_table :rfps do |t|
      t.float :max_price
      t.string :shape
      t.string :cut
      t.string :color
      t.string :clarity
      t.float :carat
      t.text :comment
      t.integer :user_id
    end
  end
end
