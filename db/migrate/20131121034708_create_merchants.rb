class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :business_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :phone_number
      t.string :image_url
    end
  end
end
