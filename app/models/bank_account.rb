class BankAccount < ActiveRecord::Base
    has_many :loans
end

