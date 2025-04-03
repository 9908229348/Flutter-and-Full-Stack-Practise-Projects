package com.practice_problems;

public class SwappingNumbers {

    public static void main(String[] args) {
        int a = 46, b = 38;
        System.out.println("Before Swapping: a = " + a + " b = " + b);
        swappingWithoutThirdVariable(a, b);
        swappingWithThirdVariable(a, b);

    }

    static void swappingWithoutThirdVariable(int a, int b) {
        a = a + b;
        b = a - b;
        a = a - b;
        System.out.println("After swap without third variable: a = " + a + " b = " + b);
    }

    static void swappingWithThirdVariable(int a, int b) {
        int c = a;
        a = b;
        b = c;
        System.out.println("After swap with third variable: a = " + a + " b = " + b);
    }
}
