public class Dog extends Animal {
    int dogFood;
    int fish;
    int fruits;
    int oatmeal;

    Dog(String name, boolean isHealthy, boolean isTired, int dogFood, int fish, int fruits, int oatmeal) {
        super(name, isHealthy, isTired);
        this.dogFood = dogFood;
        this.fish = fish;
        this.fruits = fruits;
        this.oatmeal = oatmeal;
    }

    void display() {
        super.display();
        System.out.println("Amount of dogfood eaten? " + dogFood + "g");
        System.out.println("Amount of fish eaten? " + fish + "g");
        System.out.println("Amount of fruits eaten? " + fruits + "g");
        System.out.println("Amount of oats eaten? " + oatmeal + "g");
    }
}