require_relative './config/environment.rb'

def cars
   puts Car.all.map {|obj| obj.make}
end


def dealerships
   puts Dealership.all.map {|obj| obj.brand}
end

def new_user
new_user = User.create(name: "Devante", credit_score: 1000)
end 

def welcome
    title = Artii::Base.new(:font => "slant")
    puts "Welcome to:"
    puts title.asciify("My 64")
end

def login
   cars = Car.all.map {|car| car.make}
   prices = Car.all.map {|car| car.price}
   prompt = TTY::Prompt.new
   
   puts "We'll have you cruising in no time!!"
   

   login_choice = prompt.select("Choose your local dealership!", [
      "Texas Direct Auto",
      "Car Max",
      "Car Cabanna",
      "Wheel Deal",
      "Elite Cars",
      "Exit"])
   car_choice = prompt.select("Here's what we got!", 
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      "#{cars[rand(cars.length)]}: #{prices[rand(prices.length)]}",
      )
      #need to Car.create( )
      puts "Ah the #{car_choice}....good choice!"
      sleep(1.5)

      loan_choice = prompt.select("Do you need a loan?", ["Yes", "No"])
      if (loan_choice == "Yes")
         loan_name = prompt.ask("What is your name?:") 
         loan_credit = prompt.ask("What is your credit score?:").to_i
         loan_user = User.create(name: loan_name, credit_score: loan_credit)
            while loan_credit < 600
               puts "SORRY, #{loan_credit} is too low!"
               loan_choice = prompt.select("Do you need a loan?", ["Yes", "No"])
               if (loan_choice == "No")
                  exit! 
               end
            end
         car_price = car_choice.delete("^0-9").to_i
         downpayment = prompt.ask("Please enter downpayment:").to_i
            while downpayment < car_price * 0.20
               puts "Less than required payment!!!"
               downpayment = prompt.ask("Please enter downpayment amount:").to_i
               if (downpayment > car_price * 0.20)
                  puts "Got it!"
               end
            end

         bank_balance1 = prompt.ask("Enter Bank Balance:").to_i
            if (bank_balance < downpayment)
               puts "Not enough money in your account"
               bank_balance1 = prompt.ask("Enter Bank Balance:").to_i
            elsif (bank_balance > downpayment)
               puts "Verifying balance...."
               balance = BankAccount.create(balance: bank_balance1)
            end
      elsif (loan_choice == "No")
         bank_balance2 = prompt.ask("Enter Bank Balance:").to_i   
         if (bank_balance2 < car_price)
            puts "Not enough money in your account"
            bank_balance2 = prompt.ask("Enter Bank Balance:").to_i
         elsif (bank_balance2 > downpayment)
            puts "Verifying balance...."
            balance = BankAccount.create(balance: bank_balance1)
         end
               puts "Buying car!" #Loan.create()
      end
end



            # bank_balance = prompt.ask("Enter Bank Balance:").to_i
            # balance = BankAccount.create(balance: bank_balance, user_id: loan_user.users)
            # if (bank_balance > car_price)
            #    puts "Creating Loan...."
            # else 
            #    puts "Not enough money in your account"
            # end


welcome
login



















# def welcome
#     title = Artii::Base.new(:font => "slant")
#     puts "Welcome to:"
#     puts title.asciify("The Store")
# end

# def login
#     users = User.all.map {|user| user.name}
#     prompt = TTY::Prompt.new
#     login_choice = prompt.select("What would you like to do?", ["Login", "Sign Up", "Exit"])
#     if (login_choice == "Login")
#         current_username = prompt.ask("What is your username?")
#         current_password = prompt.ask("What is your password?")
#         if users.include?(current_username) && User.all.find_by(password: current_password)
#             puts "Let's start shopping"
#         else 
#             puts "Incorrect username or password"
#             exit!
#         end
#     end
# end

# def shopping
#     items = Item.all.map {|item| item.name }
#     prompt = TTY::Prompt.new
#     item_choice = prompt.select("Please select an item from our shop:", items)
#     puts "You purchased a #{item_choice}!!!!"
#     menu_options = prompt.select("What would you like to do next", ["continue shopping", "sign out"])
#     if menu_options == "continue shopping"
#         shopping
#     else
#         login
#     end
# end

# welcome
# login
# shopping
