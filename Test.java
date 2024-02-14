import java.util.Properties;

class Test {

    public static void print() {
        System.out.println("printing Java program started");
        Properties props = System.getProperties();
        System.out.println(props);
    }

    public static void main(String args[]) {
        System.out.println("Java program started");
        print();
    }

}