class AddFieldsToVendors < ActiveRecord::Migration
  def change
  		add_column :vendors, :reset_password_token, :string
  		add_column :vendors, :reset_password_sent_at, :datetime
  		add_column :vendors, :remember_created_at, :datetime
  		add_column :vendors, :sign_in_count, :integer, :default => 0
  		add_column :vendors, :current_sign_in_at, :datetime
  		add_column :vendors, :current_sign_in_ip, :string
  		add_column :vendors, :last_sign_in_ip, :string
      ## Recoverable
      ## Rememberable

      ## Trackable

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
    

    add_index :vendors, :email,                :unique => true
    add_index :vendors, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end
end
