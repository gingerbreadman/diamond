class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.string :email
      t.string :phone_number
    end
  end
end
