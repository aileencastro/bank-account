import UIKit

//intention: create a bank account that can create deposits, make withdrawals, and transfer funds between two accounts
//because of our intentions, going to need 3 functions at least

class BankAccount{
    //properties go below here:
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    //add initializers, which will contain properties above^
    init(){
        accountName = "default"
        currentBalance = 0.0
        routingNumber = 0
    }
    
    //challenge: create functions for depositing, withdrawing, setting account name, and setting routing number - 4 functions
    func makeDeposit(depositAmount: Double){
        currentBalance = currentBalance + depositAmount
    }
    
    func makeWithdrawal(withdrawalAmount: Double){
        currentBalance = currentBalance - withdrawalAmount
    }
    
    func accountName(name: String){
    accountName = name
    }
    
    func routingNumber(routingN: Int){
        routingNumber = routingN
    }
    
    //this function check everything allows me to make sure that I set everything correctly!
    func checkEverything(){
        print(accountName)
        print(currentBalance)
        print(makeWithdrawal)
        print(makeDeposit)
        print(routingNumber)
    }
    
    //create a function able to transfer money from Peggah's account into Aileen's account
    //for sender and recipient create OBJECTS within a function. aka create a bank account everytime account transfer is accessed.
    //going to be important for Aviatrix project on Wed
    func accountTransfer(sender: BankAccount, recepient: BankAccount, transferAmount: Double, senderRoutingNumber: Int){
        
        if sender.routingNumber == senderRoutingNumber{
            sender.currentBalance = sender.currentBalance - transferAmount
            recepient.currentBalance = recepient.currentBalance + transferAmount
            print("The recepient has successfully recieved the transfer")
        }else{
            print("Sorry, but the info that you typed in is not correct. Try a different routing number.")
        }
        
        
    }
    
}


var aileensBankAccount = BankAccount()
var peggahsBankAccount = BankAccount()

peggahsBankAccount.accountName(name: "Peggah's Bank Account")
peggahsBankAccount.routingNumber(routingN: 1033922)
peggahsBankAccount.makeDeposit(depositAmount: 912.00)

aileensBankAccount.accountName(name: "Aileen Castro's Bank Account")
aileensBankAccount.routingNumber(routingN: 4889430243)
aileensBankAccount.makeDeposit(depositAmount: 345.34)

peggahsBankAccount.accountTransfer(sender: peggahsBankAccount, recepient: aileensBankAccount, transferAmount: 20, senderRoutingNumber: 1033922)

aileensBankAccount.checkEverything()
peggahsBankAccount.checkEverything()

