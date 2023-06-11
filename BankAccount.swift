public class BankAccount{
  // properties
  private(set) var accountNumber: Int;
  private(set) var customerName: String;
  private(set) var yearlyInterestRate: Double {
        didSet {
            if yearlyInterestRate < 0.1 {
                yearlyInterestRate = 0.1;
            } else if yearlyInterestRate > 2.0 {
                yearlyInterestRate = 2.0;
            }
        }
    }
    private(set) var accountBalance: Double {
        didSet {
            if accountBalance < 10.0 {
                accountBalance = 10.0;
            }
        }
    }
    private(set) var year: Int {
        didSet {
            if year < 1 {
                year = 1;
            } else if year > 5 {
                year = 5;
            }
        }
    }

  // diccription displaying the data in properties.
  var description: String {
        return "Account Number: \(accountNumber)\nCustomer Name: \(customerName)\nYearly Interest Rate: \(yearlyInterestRate)%\nAccount Balance: $\(accountBalance)\nYear: \(year)";
    }

    // Default Initialization
    init() {
        accountNumber = 00000000;
        customerName = "";
        yearlyInterestRate = 0.1;
        accountBalance = 10.0;
        year = 1;
    }

  // user initialization
    init(accountNumber: Int, customerName: String, yearlyInterestRate: Double, accountBalance: Double, year: Int){
    self.accountNumber = accountNumber;
    self.customerName = customerName;
    self.yearlyInterestRate = yearlyInterestRate;
    self.accountBalance = accountBalance;
    self.year = year;
  }

  // credit function for depositing money
  func credit(amount: Double){
    accountBalance += amount;
  }

  // debit function to withdraw the money
  func debit(amount: Double){
    if(newBalance >= 10.0){
        accountBalance += amount;
        print("Transaction accepted.");
    }
    else{
      print("The transaction has declined due to insufficient funds");
    }
  }

  // deinitialization
  deinit(){}
} //end of class