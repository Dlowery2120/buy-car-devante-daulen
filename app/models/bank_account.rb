class BankAccount < ActiveRecord::Base
    has_many :loans
    belongs_to :user
end