class Vendor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, :registerable
    
      has_many :relationships, foreign_key: "quote_id", dependent: :destroy
    has_many :quotes, through: :relationships, source: :quote	

    def bid!(quote)
    	relationships.create!(quote_id: quote.id)
    end
end
