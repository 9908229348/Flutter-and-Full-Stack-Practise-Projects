package com.practice_problems;

import java.util.Scanner;

public class SumofDigits {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a number to reverse");
        int number = scanner.nextInt();
        scanner.nextLine();
        int sum = 0, remainder = 0;
        while (number != 0) {
            remainder = number % 10;
            sum = sum + remainder;
            number = number / 10;
        }
        System.out.println("Sum of digits is : " + sum);
    }
}
