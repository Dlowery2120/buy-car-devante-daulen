User.destroy_all
Car.destroy_all
Dealership.destroy_all
BankAccount.destroy_all
Loan.destroy_all

angelo = User.create(name: "angelo", credit_score: 800)
daulen = User.create(name: "daulen", credit_score: 600)
devante = User.create(name: "devante", credit_score: 550)
susan = User.create(name: "susan", credit_score: 450)
jack = User.create(name: "jack", credit_score: 650)

car1 = Car.create(make: "Rolls-Royce Wraith", price: 400000)
car2 = Car.create(make: "Tesla Cybertruck", price: 100000)
car3 = Car.create(make: "Chevy Silverado", price: 15000)
car4 = Car.create(make: "Kia Optima", price: 20000)
car5 = Car.create(make: "Ford F-150", price: 40000)
car6 = Car.create(make: "Dodge Viper", price: 15000)
car7 = Car.create(make: "Dodge Challenger", price: 30000)
car8 = Car.create(make: "Ferrari Testarossa", price: 15000)
car9 = Car.create(make: "Toyota Camry", price: 13000)
car10 = Car.create(make: "Toyota Prius", price: 15000)
car11 = Car.create(make: "Chevy Cruze", price: 18000)
car12 = Car.create(make: "Porshe Taycan", price: 100000)

dealership1 = Dealership.create(brand:"Texas Direct Auto")
dealership2 = Dealership.create(brand:"Carmax")
dealership3 = Dealership.create(brand:"Car Cabanna")
dealership4 = Dealership.create(brand:"Wheel Deal")
dealership5 = Dealership.create(brand:"Elite Cars")

bank_account1 = BankAccount.create(balance:6000, user_id: angelo.id)
bank_account2 = BankAccount.create(balance:4000, user_id: devante.id)
bank_account3 = BankAccount.create(balance:50000, user_id: daulen.id)


loan1 = Loan.create(user_id: angelo.id, car_id: car1.id, dealership_id: dealership1.id)
loan2 = Loan.create(user_id: susan.id, car_id: car2.id, dealership_id: dealership2.id)
loan3 = Loan.create(user_id: devante.id, car_id: car7.id, dealership_id: dealership3.id)
loan4 = Loan.create(user_id: daulen.id, car_id: car6.id, dealership_id: dealership5.id)


puts "🌱🌱🌱Seed🌱🌱🌱"