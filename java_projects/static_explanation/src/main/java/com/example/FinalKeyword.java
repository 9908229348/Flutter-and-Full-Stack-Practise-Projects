package com.example;

//final variable cannot be reassign
//final method cannot be overridden
//final class cannot be extended

 class FinalExplanation {
    final static int finalVariable = 100;
    static int staticInstanceVar = 200;
    int instanceVar = 300;

    final static void finalStaticMethod() {
        // final variable cannot be reassign
        // finalVariable = 20;
        System.out.println("final and static Method");
    }

    static void staticMethod() {
        System.out.println("static Method");
    }

    void nonStaticMethod() {
        System.out.println("Non-Static Method");
    }

    final void nonStaticFinalMethod() {
        System.out.println("Non-static final Method");
    }
}

class SubClass extends FinalExplanation{

    void nonStaticMethod() {
        System.out.println("Non-Static Method in sub class");
    }

    static void staticMethod() {
        System.out.println("static Method in subclass");
    }

    //final methods cannot be overridden

    // final static void finalStaticMethod() {
    //     System.out.println("final and static Method");
    // }

}

/**
 * Final
 */

final class FinalClass {
    int a = 10;

    void print() {
        System.out.println("final class method");
    }
}

//This is not possible Final class cannot be overridden

// class subFinalClass extends FinalClass {

// }

public class FinalKeyword{
    public static void main(String[] args) {
        SubClass subClass = new SubClass();
        subClass.nonStaticFinalMethod();
        subClass.nonStaticMethod();
        SubClass.staticMethod();
    }
}


