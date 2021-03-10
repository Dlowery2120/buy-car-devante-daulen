class Loan < ActiveRecord::Base
    belongs_to :car
    belongs_to :bank_account
end