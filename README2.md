# Car Loan App
Car loan app is a cli application that allows User to select a car, 
arrange loan, and see if qualified
## Models
* User #name, credit_score
* Loan #user, car, dealearship, bank_account
* Car #Make, price
* Dealership #brand
* Bank Account #balance
## Relationships
Dealership -< Car -< Loan >- Bank Account >- User
User has many cars
User has many Loans
Dealership has many cars
Car has many Loans
Bank Account has many Loans
Loan belongs to a Car
Loan belongs to a Bank Account
<!-- Car has many Bank Accounts through Loans
Car has many Users through Bank Accounts -->
Dealership has many Users

### User Stories
#### MVP 
User can browse all cars
User can browse all Dealerships
Loan can check Bank Account
User can arrange loan
#### Stretch Goals
User has a login capability
User can buy additional warranty