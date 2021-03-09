class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.integer :user_id
      t.integer :car_id
      t.integer :bank_account_id
      t.integer :dealership_id
    end
  end
end
