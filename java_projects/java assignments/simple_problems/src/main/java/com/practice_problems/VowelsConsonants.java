package com.practice_problems;

import java.util.Scanner;

public class VowelsConsonants {
    public static void main(String[] args) {
        @SuppressWarnings("resource")
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a string");
        String str = scanner.nextLine();
        int vowelsCount = 0, consonantsCount = 0;
        for (int i = 0; i < str.length(); i++) {
            char character = str.charAt(i);
            if (character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u'
                    || character == 'A' || character == 'E' || character == 'I' || character == 'O'
                    || character == 'U') {
                vowelsCount = vowelsCount + 1;
            } else {
                consonantsCount = consonantsCount + 1;
            }
        }

        System.out.println("Vowels count: " + vowelsCount + " Consonants count : " + consonantsCount);
    }
}
