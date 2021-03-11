class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.integer :balance
      t.integer :user_id
    end
  end
end
