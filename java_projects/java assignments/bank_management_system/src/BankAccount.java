public class BankAccount {
    String accountNumber;
    String accountHolderName;
    double balance;

    BankAccount(String accountNumber, String accountHolderName, double balance) {
        this.accountNumber = accountNumber;
        this.accountHolderName = accountHolderName;
        this.balance = balance;
    }

    void deposit(double amount) {
        balance = balance + amount;
    }

    String withdraw(double amount) {
        if (balance < amount) {
            return "FAILURE";
        } else {
            balance = balance - amount;
            return "SUCCESS";
        }
    }

    double checkBalance() {
        return balance;
    }
}
