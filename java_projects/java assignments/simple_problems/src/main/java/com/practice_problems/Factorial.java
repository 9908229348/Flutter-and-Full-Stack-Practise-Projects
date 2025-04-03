package com.practice_problems;

import java.util.Scanner;

public class Factorial {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a number to calculate factorial");
        int number = scanner.nextInt();
        scanner.nextLine();
        int fact = 1;
        for (int i = 1; i <= number; i++) {
            fact = fact * i;
        }
        System.out.println("Factorial of " + number + " is :" + fact);
    }
}
