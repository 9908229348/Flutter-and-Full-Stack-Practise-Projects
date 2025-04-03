package com.example;

/**
 * Main
 */
public class Main {
    public static void main(String[] args) {
        System.out.println("Main Method");
        StaticExplanation staticExplanation = new StaticExplanation();
        StaticExplanation.staticMethod();
        staticExplanation.nonStaticMethod();
    }
}

class StaticExplanation {
    static int staticVar = 10;
    int instanceVar;

    // normal block
    {
        System.out.println("Normal Bloc Executed");
    }

    // static block
    static {
        System.out.println("Static Block Executed");
    }

    static void staticMethod(){
        staticVar = 20;
        System.out.println("Static Method");
    }

    void nonStaticMethod(){
        System.out.println("Non Static Method");
    }
}