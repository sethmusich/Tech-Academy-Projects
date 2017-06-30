def start(car="", car_price=0):
    car = welcome(car)
    car_price = pick_car(car_price)
    
    
def welcome(car):
    stop=True
    while stop:  #8. Use of a while loop             
        car = raw_input("\nWelcome to Seth's Car Dealership!\nWhat type of car would you like to customize? Your options are: \n\nSubaru Outback \nToyota Truck \nBMW Sedan\nType Here:").lower(); #2. Assign a string to a variable
        if car == "subaru outback" or car == "bmw sedan" or car == "toyota truck": #6 Use of logical operators, and #7. Use of conditional statements: if, elif, else
            print("\nYou chose a {}!".format(car))
            print("\nIn the next menus, choose the model and type for your {}, and we will calculate the total for you.".format(car))
            stop =False #5 Use of operators
        else:
            print("We do not have that model in stock") 
            stop =True   

    pick_car(car)
    
def pick_car(car):    
    print ("\nYou chose the {} car to customize, great choice!".format(car))
    stop=True
    while stop:
        if  car == "subaru outback": #5 Use of operators
            print "The Subaru's base price is $20,000"
            car_price = 20500.50 #1 Assign an integer to a variable
            stop=False
        if car == 'toyota truck': 
            print "The Toyota's base price is $30,000"
            car_price = 30000.75
            stop=False 
        if car == 'bmw sedan':
            print "The BMW's base price is $40,000"
            car_price = 40000
            stop=False
            
    
    stop=True
    while stop:
        proceed = raw_input("\nWould you like to proceed?\ny/n? :") #2. Assign a string to a variable
        if proceed =='y':
            stop=False
        if proceed =='n':
            stop=False
            reset(car, car_price)
            
    pick_type(car,car_price)    
    
def pick_type(car, car_price):
    stop = True
    while stop:
        model = raw_input("\nWould you like this car in standard or fully-loaded? \nEnter S (+$2050.50) for Standard model, \nEnter F (+$7500.25) for Fully-Loaded model\n:").lower()
        if model == "s":
            print ("You choose the {} in a standard edition.".format(car))
            car_price = (car_price + 2050.50) #5 Use of operators
            stop =False
        elif model == "fl":
            car_price = (car_price + 7500.25) #5 Use of operators
            print ("\nYou choose the {} in a fully-loaded edition.".format(car)) #4 Use the print function and .format() notation to print out the variable you assigned  
            stop =False
        else:
            print "\nWe don't have that model, try one of the two options, S or FL."
            stop =True

            
    tires(car, car_price)

def tires(car,car_price):
    treads = ['1cm','2cm','3cm']
    print ("\nChoose a tire tread thickness.\nEach additional cm is +$100. Your options for tire tread are: ")
    for x in treads: #9. Use of a for loop
        print str(x) #10. Create a list and iterate through that list using a for loop to print each item out on a new line
    stop=True
    while stop:
        tire = raw_input("\nWhich thickness would you like? \n1,2 or 3?: ")
        if tire =='1':
            car_price = (car_price+(1*100))
            stop =False
        if tire == '2':
            car_price = (car_price+(2*100))
            stop =False
        if tire == '3':
            car_price = (car_price+(3*100))
            stop =False
        else:
            print ("\nWe dont have that thickness, enter 1,2 or 3.")
            stop=True

    total(car, car_price)
    
def total(car, car_price): #12. Define a function that returns a string variable
    print("\n total for your car was {}".format(float(car_price))) # 3. Assign a float to a variable  
    stop=True
    while stop:
        again = raw_input("\nDo you want to do another customization? Enter y or n:") 
        if again == "y":
            stop=False
            reset(car, car_price)
        if again == "n":
            stop=False
            exit()
    
    
def reset(car, car_price):
    car_price = 0
    start()


start() #13. Call the function you defined above and print the result to the shell
