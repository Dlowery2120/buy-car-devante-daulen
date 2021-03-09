class Car < ActiveRecord::Base
    has_many :loans
    has_many :users, :through => :loans
end