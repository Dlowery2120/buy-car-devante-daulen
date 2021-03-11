User.destroy_all
Car.destroy_all
Dealership.destroy_all
BankAccount.destroy_all
Loan.destroy_all



angelo = User.create(name: "angelo", credit_score: 700)
daulen = User.create(name: "daulen", credit_score: 600)

car1 = Car.create(make: "Ford", price: 15000)
car2 = Car.create(make: "Nissan", price: 10000)

dealership1 = Dealership.create(brand: "Texasdirectauto")
dealership2 = Dealership.create(brand:"Carmax")

bank_account1 = BankAccount.create(balance:6000)
bank_account2 = BankAccount.create(balance:4000)
bank_account3 = BankAccount.create(balance:50000)

# Loan.create(user_id: angelo.id, car_id: car1.id)
Loan.create(user_id: angelo.id, car_id: car1.id, dealership_id: dealership1.id, bank_account_id: bank_account1.id)
Loan.create(user_id: daulen.id, car_id: car2.id, dealership_id: dealership2.id, bank_account_id: bank_account2.id)
# Loan.create(user_id: daulen.id, car_id: car2.id)
#Purchase.create(user_id: angelo.id, item_id: fancy_pants.id)

puts "Seed loaded."