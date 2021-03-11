class User < ActiveRecord::Base
    has_many :bank_accounts 
    has_many :loans
    
    has_many :cars, :through => :loans
end
