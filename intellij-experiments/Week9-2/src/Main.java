public class Main {
    public static void main(String[] args) {
        Bow bow1;
        bow1 = new Bow("Bow 1", 300, 400, true, 23);
        bow1.display();
        System.out.println("\n");

        Dog dog1;
        dog1 = new Dog("Kenny", true, true, 200, 100, 150, 300);
        dog1.display();
        System.out.println("\n");
    }
}
