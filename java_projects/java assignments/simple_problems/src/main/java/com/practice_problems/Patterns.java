package com.practice_problems;

import java.util.Scanner;

public class Patterns {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a digit");
        int digit = scanner.nextInt();
        scanner.nextLine();
        System.out.println("Triangle");
        printTriangle(digit);
        System.out.println("Reverse Triangle");
        printReverseTriangle(digit);
    }

    static void printTriangle(int digit) {
        int i = 1, j = 1;
        for (i = 1; i <= digit; i++) {
            for (j = 1; j <= i; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }

    static void printReverseTriangle(int digit) {
        int i = 1, j = digit;
        for (i = 1; i <= digit; i++) {
            for (j = digit; j >= i; j--) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }

}
