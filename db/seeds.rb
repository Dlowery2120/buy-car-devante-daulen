User.destroy_all
Car.destroy_all
Dealership.destroy_all
BankAccount.destroy_all
Loan.destroy_all



angelo = User.create(name: "angelo", credit_score: 80)
daulen=User.create(name: "daulen", credit_score: 60)

car1 = Car.create(make: "Ford", price: 15000)
car2 = Car.create(make: "Nissan", price: 10000)

dealearship1 = Dealership.create(brand: "Texasdirectauto")
dealearship2 = dealearship.create(brand:"Carmax")

bank_account1 = BankAccount.create(balance:6000)
bank_account2 = BankAccount.create(balance:4000)
bank_account3 = BankAccount.create(balance:50000)

loan.create(user_id: angelo.id, car_id: car1.id)
loan.create(user_id: daulen.id, car_id: car2.id)
#Purchase.create(user_id: angelo.id, item_id: fancy_pants.id)

