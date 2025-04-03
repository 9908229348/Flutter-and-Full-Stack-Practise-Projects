package com.practice_problems;

import java.util.Scanner;

public class StringOperations {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a string with space");
        String input = scanner.nextLine();
        String output = input.replaceAll("\\s", "");
        System.out.println("Your String without spaces : " + output);
        System.out.println("Enter a string with some special characters");
        String string2 = scanner.nextLine();
        String output2 = string2.replaceAll("[^a-zA-Z0-9]", "");
        System.out.println("Your input after removing special characters : " + output2);
    }
}
