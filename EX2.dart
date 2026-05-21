class BankAccount {
  int accountID;
  String accountOwner;
  double _balance = 0;
  BankAccount(this.accountID, this.accountOwner, this._balance);

  double balance() => _balance;

  void credit(double amount) => _balance += amount;

  void withdraw(double amount) {
    if (_balance - amount < 0) {
      throw Exception("Insufficient balance!");
    }
    _balance -= amount;
  }
}

class Bank {
  List<BankAccount> accounts = [];

  BankAccount createAccount(int accountID, String accountOwner) {
    for (var acc in accounts) {
      if (acc.accountID == accountID) {
        throw Exception("Account ID already exists!");
      }
    }

    BankAccount newAccount = BankAccount(accountID, accountOwner, 0);
    accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank();

  BankAccount acc1 = myBank.createAccount(1, "Donal");

  acc1.credit(100.10);

  acc1.withdraw(100.03);

  print("Balance: \$${acc1.balance()}");
}
