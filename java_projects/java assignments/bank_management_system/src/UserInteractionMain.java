import java.util.Scanner;

public class UserInteractionMain {
    static Scanner scanner = new Scanner(System.in);
    static BankAccount bankAccount = new BankAccount(null, null, 0);
    static SavingsAccount savingsAccount = new SavingsAccount(null, null, 0, 0);

    public static void main(String[] args) {
        System.out.println("Welcome to Bank Management System");
        boolean check = true;

        while (check) {
            System.out.println(
                    "Please select your choice:\n1.Create Account\n2.Deposit Money\n3.Withdraw Money\n4.Check Balance\n5.Add Interest\n6.Exit the Program");
            int choice = scanner.nextInt();
            scanner.nextLine();
            switch (choice) {
                case 1:
                    System.out.println("Enter Bank Account Number");
                    String accountNumber = scanner.nextLine();
                    System.out.println("Enter Account Holder Name");
                    String accountHolderName = scanner.nextLine();
                    System.out.println("Enter Bank Balance");
                    double balance = scanner.nextDouble();
                    bankAccount = new BankAccount(accountNumber, accountHolderName, balance);
                    System.out.println("Account Created Successfully");
                    break;
                case 2:
                    System.out.println("Enter amount you want to deposit");
                    double amountToDeposit = scanner.nextDouble();
                    bankAccount.deposit(amountToDeposit);
                    System.out.println("Amount Deposited Successfully");
                    break;
                case 3:
                    System.out.println("Enter amount you want to withdraw");
                    double amountToWithdraw = scanner.nextDouble();
                    String status = bankAccount.withdraw(amountToWithdraw);
                    if (status == "SUCCESS") {
                        System.out.println("Amount Withdrawn Successfully");
                    } else {
                        System.out.println("Insufficient balance");
                    }
                    break;
                case 4:
                    double bankBalance = bankAccount.checkBalance();
                    System.out.println("Bank Balance : " + bankBalance);
                    break;
                case 5:
                    System.out.println("Enter interest Rate");
                    double interestRate = scanner.nextDouble();
                    savingsAccount.addInterestRate(interestRate);
                    savingsAccount = new SavingsAccount(bankAccount.accountNumber, bankAccount.accountHolderName,
                            bankAccount.balance, interestRate);
                    System.out.println("Interest for 1 year with interest rate " + interestRate + " is : "
                            + savingsAccount.calculateInterest());
                    break;
                case 6:
                    check = false;
                    break;
                default:
                    System.out.println("Please Enter correct choice");
                    break;
            }
        }
    }
}
