package com.practice_problems;

import java.util.Scanner;

public class ReverseNumber {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a number to reverse");
        int number = scanner.nextInt();
        scanner.nextLine();
        int remainder, reverseNumber = 0, originalNumber = number;
        while (number != 0) {
            remainder = number % 10;
            reverseNumber = reverseNumber * 10 + remainder;
            number = number / 10;
        }
        System.out.println("Reverse of your number is: " + reverseNumber);
        if (originalNumber == reverseNumber) {
            System.out.println("Your Number is Palindrome");
        } else {
            System.out.println("Your number is not a Palindrome");
        }
    }
}
