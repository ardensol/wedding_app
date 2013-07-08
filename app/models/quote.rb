class Quote < ActiveRecord::Base
	belongs_to :user
	has_many :relationships, foreign_key: "vendor_id", dependent: :destroy
	has_many :reverse_relationships, foreign_key: "vendor_id", class_name: "Relationship", dependent: :destroy
	has_many :vendors, through: :reverse_relationships, source: :vendor	
end
