package com.practice_problems;

import java.util.Scanner;

public class StringReverse {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a string to reverse");
        String inputString = scanner.nextLine();
        int lengthOfInput = inputString.length();
        String reverseString = "";

        for (int i = lengthOfInput - 1; i >= 0; i--) {
            reverseString = reverseString + inputString.charAt(i);
        }

        System.out.println("Reverse of " + inputString + " is : " + reverseString);

        if(inputString.equals(reverseString)){
            System.out.println("Your input string is palindrome");
        }else{
            System.out.println("Your input string is not a palindrome");
        }
    }
}