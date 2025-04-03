public class Singleton {
    static Singleton s;

    static Singleton getInstance() {
        if (s != null) {
            s = new Singleton();
            return s;
        } else {
            return s;
        }
    }
}
