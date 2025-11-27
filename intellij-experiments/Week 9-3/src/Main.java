public class Main {
    public static void main(String[] args) {
        Baker baker1;
        baker1 = new Baker("Barbara", "Baking", 300, "Bakewell Tarts");
        baker1.display();
        baker1.makes();

        System.out.println("\n");

        Baker baker2;
        baker2 = new Baker("John", "Baking", 700, "Jam Cakes");
        baker2.display();
        baker2.makes();

        Builder builder1;
        builder1 = new Builder("Jack", "Construction", 1000);
        builder1.display();
    }
}