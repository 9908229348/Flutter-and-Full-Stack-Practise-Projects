public class SavingsAccount extends BankAccount {
    double interestRate;

    SavingsAccount(String accountNumber, String accountHolderName, double balance, double interestRate) {
        super(accountNumber, accountHolderName, balance);
        this.interestRate = interestRate;
    }

    void addInterestRate(double interest) {
        interestRate = interest;
    }

    double calculateInterest() {
        double interest = (balance * 12 * interestRate) / 100;
        return interest;
    }
}
