class User < ActiveRecord::Base
    has_many :loans
    has_many :cars, :through => :loans
end