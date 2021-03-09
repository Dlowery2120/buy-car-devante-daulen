class Loan < ActiveRecord::Base
    belongs_to :cars
    belongs_to :bank_accounts
end