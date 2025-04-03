public class ExceptionsInJava {
    public static void main(String[] args) {
        try {
            int num1 = 10, num2 = 2;
            int num3 = num1 / num2;
            System.out.println(num3);

            int[] numbers = new int[5];
            System.out.println(numbers[3]);

            // String n = null;
            // System.out.println(n.length());
        } catch (ArithmeticException e) {
            System.out.println("Cannot devide by zero");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("out of bound exception");
        } catch (NullPointerException e) {
            System.out.println(e.getMessage());
        } finally {
            System.out.println("Exception Completed");
        }
    }
}