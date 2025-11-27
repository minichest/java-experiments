public class Animal {
    String name;
    boolean isHealthy;
    boolean isTired;

    Animal(String name, boolean isHealthy, boolean isTired) {
        this.name = name;
        this.isHealthy = isHealthy;
        this.isTired = isTired;
    }

    void display() {
        System.out.println("Name: " + name);
        System.out.println("Is healthy? : " + isHealthy);
        System.out.println("Is tired?: " + isTired);
    }
}