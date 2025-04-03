package com.example;

import java.util.*;;

public class collections {
    public static void main(String[] args) {
        // Array

        int[] a = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }; // default value 0 for type int
        String[] strArray = new String[5];
        System.out.println(strArray[0]); // default value = null
        for (int i = 0; i < a.length; i++) {
            System.out.println(a[i]);
        }

        // Array list
        List<Integer> arrayList = new ArrayList<>();
        arrayList.add(25);
        arrayList.add(67);
        arrayList.add(88);
        arrayList.add(98);

        System.out.println(arrayList.get(3));

        arrayList.set(0, 35);

        System.out.println(arrayList.get(0));

        // linked list
        LinkedList<String> linkedList = new LinkedList<>();
        linkedList.add(0, "Sravanthi");
        linkedList.add("Hema");
        linkedList.add("Teja");
        linkedList.add("Bhavya");
        String lastString = linkedList.get(3);
        System.out.println(lastString);

        // Hash set
        HashSet<String> cars = new HashSet<String>();
        cars.add("Volvo");
        cars.add("BMW");
        cars.add("Ford");
        cars.add("BMW");
    }
}
