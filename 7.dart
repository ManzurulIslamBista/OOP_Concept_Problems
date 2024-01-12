class Account {
  String name;
  double balance;
  int acc_number;

  Account(
      {required this.acc_number, required this.name, required this.balance});
}

class Bank {
  List<Account> account = [];

  void add_account(Account acc) {
    account.add(acc);
    print("Account has been created for ${acc.name} ");
  }

  void deposit_balance(int acc_number, double balance) {
    account.forEach((acc) {
      if (acc.acc_number == acc_number) {
        acc.balance += balance;
      }
    });
  }

  void withdraw_balance(int acc_number, double balance) {
    account.forEach((acc) {
      if (acc.acc_number == acc_number) {
        if (balance < acc.balance) {
          acc.balance -= balance;
        } else {
          print("Insuficient Balance");
        }
      }
    });
  }

  void Show_account_list() {
    account.forEach((acc) {
      print(
          "Account Number : '${acc.acc_number}' Name : ${acc.name}  Balance : ${acc.balance}");
    });
  }
}

void main() {
  Account account =
      Account(acc_number: 1045, name: "Md Manzurul Islam", balance: 400.00);
  Bank bank = Bank();
  bank.add_account(account);
  bank.Show_account_list();
  bank.deposit_balance(1045, 800.00);
  bank.Show_account_list();
  bank.withdraw_balance(1045, 200.00);
  bank.Show_account_list();
}
