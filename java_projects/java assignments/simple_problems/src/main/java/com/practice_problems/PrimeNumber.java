package com.practice_problems;

import java.util.Scanner;

public class PrimeNumber {
    static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        findPrimeOrNot();
        printPrimeBetweenRange();
    }

    static void findPrimeOrNot() {
        System.out.println("Enter number");
        int number = scanner.nextInt();
        int multiples = 0;
        for (int i = 2; i <= number / 2; i++) {
            if (number % i == 0) {
                multiples = multiples + 1;
            }
        }

        if (multiples == 0) {
            System.out.println(number + " is a Prime Number");
        } else {
            System.out.println(number + " is not a prime number");
        }
    }

    static void printPrimeBetweenRange() {
        System.out.println("Enter range");
        System.out.println("from: ");
        int min = scanner.nextInt();
        scanner.nextLine();
        System.out.println("to: ");
        int max = scanner.nextInt();
        scanner.nextLine();
        System.out.println("Prime Numbers from " + min + " to " + max + " are:");
        for (int i = min; i <= max; i++) {
            int multiples = 0;
            for (int j = 2; j <= i / 2; j++) {
                if (i % j == 0) {
                    multiples = multiples + 1;
                }
            }

            if (multiples == 0) {
                System.out.println(i);
            }
        }
    }
}
