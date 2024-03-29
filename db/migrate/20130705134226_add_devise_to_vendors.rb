class AddDeviseToVendors < ActiveRecord::Migration
  
  def self.up
    drop_table :vendors
    create_table(:vendors) do |t|
      ## Database authenticatable
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
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## Token authenticatable
      # t.string :authentication_token


      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps
    end

    add_index :vendors, :email,                :unique => true
    add_index :vendors, :reset_password_token, :unique => true
    # add_index :vendors, :confirmation_token,   :unique => true
    # add_index :vendors, :unlock_token,         :unique => true
    # add_index :vendors, :authentication_token, :unique => true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
