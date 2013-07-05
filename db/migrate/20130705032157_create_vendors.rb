class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :business_name
      t.string :phone_number
      t.string :website
      t.string :business_desc
      t.string :headline
      t.string :street_address
      t.string :apt_ste
      t.string :zipcode
      t.string :show_info
      t.integer :travel
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
