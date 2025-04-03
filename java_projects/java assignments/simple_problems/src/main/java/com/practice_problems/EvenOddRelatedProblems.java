package com.practice_problems;

import java.util.Scanner;

public class EvenOddRelatedProblems {
    static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        printEvenNumbers();
        printOddNumbers();
        calculateSumOfEvenNumbers();
        calculateSumOfOddNumbers();
        findEvenOrOdd();
    }

    static void printEvenNumbers() {
        System.out.println("Enter limit to print even numbers");
        int limit = scanner.nextInt();
        scanner.nextLine();
        for (int i = 1; i <= limit; i++) {
            if (i % 2 == 0) {
                System.out.println(i);
            }
        }
    }

    static void printOddNumbers() {
        System.out.println("Enter limit to print odd numbers");
        int limit = scanner.nextInt();
        scanner.nextLine();
        for (int i = 1; i <= limit; i++) {
            if (i % 2 != 0) {
                System.out.println(i);
            }
        }
    }

    static void calculateSumOfEvenNumbers() {
        System.out.println("Enter limit to calculate sum of even numbers");
        int limit = scanner.nextInt();
        scanner.nextLine();
        int sum = 0;
        for (int i = 1; i <= limit; i++) {
            if (i % 2 == 0) {
                sum = sum + i;
            }
        }
        System.out.println("Sum of even numbers upto " + limit + " is :" + sum);
    }

    static void calculateSumOfOddNumbers() {
        System.out.println("Enter limit to calculate sum of odd numbers");
        int limit = scanner.nextInt();
        scanner.nextLine();
        int sum = 0;
        for (int i = 1; i <= limit; i++) {
            if (i % 2 != 0) {
                sum = sum + i;
            }
        }
        System.out.println("Sum of odd numbers upto " + limit + " is :" + sum);
    }

    static void findEvenOrOdd() {
        System.out.println("Enter number to find whether it is even or odd");
        int number = scanner.nextInt();
        if (number % 2 == 0) {
            System.out.println(number + " is Even number");
        } else {
            System.out.println(number + " is odd number");
        }
    }
}
