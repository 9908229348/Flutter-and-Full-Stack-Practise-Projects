package com.practice_problems;

import java.util.Scanner;

public class FindLargest {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a value");
        int a = scanner.nextInt();
        scanner.nextLine();
        System.out.println("Enter b value");
        int b = scanner.nextInt();
        scanner.nextLine();
        System.out.println("Enter c value");
        int c = scanner.nextInt();
        scanner.nextLine();

        if (a > b) {
            if (a > c) {
                System.out.println("Largest number is a = " + a);
            } else {
                System.out.println("Largest number is c = " + c);
            }
        } else if (c > b) {
            System.out.println("Largest number is c = " + c);
        } else {
            System.out.println("Largest number is b = " + b);
        }

    }
}
