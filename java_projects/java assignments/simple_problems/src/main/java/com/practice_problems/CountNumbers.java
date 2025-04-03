package com.practice_problems;

public class CountNumbers {
    public static void main(String[] args) {
        int oddNumbersCount = 0, evenNumbersCount = 0;
        for (int i = 1; i <= 100; i++) {
            if (i % 2 == 0) {
                evenNumbersCount = evenNumbersCount + 1;
            } else {
                oddNumbersCount = oddNumbersCount + 1;
            }
        }

        System.out.println(
                "Even numbers count(1-100) is : " + evenNumbersCount + "\nOdd Numbers Count(1-100) : " + oddNumbersCount);
    }
}
