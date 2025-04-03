package com.practice_problems;

public class FibonacciSeries {
    public static void main(String[] args) {
        System.out.println("Fibonacci series upto length 10");
        int a = 0, b = 1;
        int c = a + b;
        System.out.print(a + " ");
        System.out.print(b + " ");
        for (int i = 1; i <= 10; i++) {
            c = a + b;
            System.out.print(c + " ");
            a = b;
            b = c;
        }
    }
}
